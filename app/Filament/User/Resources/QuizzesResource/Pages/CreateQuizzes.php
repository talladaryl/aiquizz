<?php

namespace App\Filament\User\Resources\QuizzesResource\Pages;

use App\Filament\User\Resources\QuizzesResource;
use App\Models\Answer;
use App\Models\Question;
use App\Models\Quiz;
use Filament\Actions\Action;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\CreateRecord;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\URL;

class CreateQuizzes extends CreateRecord
{
    protected static string $resource = QuizzesResource::class;

    protected static bool $canCreateAnother = false;

    public static $tab = Quiz::TEXT_TYPE;

    public function currentActiveTab()
    {
        $pre = URL::previous();
        parse_str(parse_url($pre)['query'] ?? '', $queryParams);
        $tab = $queryParams['tab'] ?? null;
        $tabType = [
            '-subject-tab' => Quiz::SUBJECT_TYPE,
            '-text-tab' => Quiz::TEXT_TYPE,
            '-url-tab' => Quiz::URL_TYPE,
            '-upload-tab' => Quiz::UPLOAD_TYPE,
        ];

        return $tabType[$tab] ?? Quiz::TEXT_TYPE; // Fixed missing return statement
    }

    protected function handleRecordCreation(array $data): Model
    {
        $userId = Auth::id();
        $activeTab = $this->currentActiveTab(); // Fixed incorrect method call

        $descriptionFields = [
            Quiz::TEXT_TYPE => $data['quiz_description_text'] ?? null,
            Quiz::SUBJECT_TYPE => $data['quiz_description_sub'] ?? null,
            Quiz::URL_TYPE => $data['quiz_description_url'] ?? null,
        ];

        $description = $descriptionFields[$activeTab] ?? null;

        $quiz = Quiz::create([
            'user_id' => $userId,
            'title' => $data['title'],
            'category_id' => $data['category_id'],
            'quiz_description' => $description,
            'type' => $activeTab,
            'status' => 1,
            'quiz_type' => $data['quiz_type'] ?? 0,
            'max_questions' => count($data['manual_questions'] ?? []),
            'diff_level' => $data['diff_level'] ?? 0,
            'unique_code' => generateUniqueCode(),
            'language' => $data['language'] ?? 'en',
            'time_configuration' => $data['time_configuration'] ?? 0,
            'time' => $data['time'] ?? 0,
            'time_type' => $data['time_type'] ?? null,
            'quiz_expiry_date' => $data['quiz_expiry_date'] ?? null,
        ]);

        if (!empty($data['manual_questions']) && is_array($data['manual_questions'])) {
            foreach ($data['manual_questions'] as $questionData) {
                $questionText = trim($questionData['question'] ?? '');

                if (!empty($questionText)) {
                    $question = Question::create([
                        'quiz_id' => $quiz->id,
                        'title' => $questionText,
                    ]);

                    if (!empty($questionData['answers']) && is_array($questionData['answers'])) {
                        foreach ($questionData['answers'] as $answerData) {
                            $answer = new Answer();
                            $answer->question_id = $question->id;
                            $answer->is_correct = $answerData['is_correct'] ?? false;
                            $answer->type = $answerData['type'] ?? 'text';

                            switch ($answer->type) {
                                case 'text':
                                    $answer->title = $answerData['value'] ?? 'Réponse texte';
                                    break;
                                case 'number':
                                    $answer->title = (string) ($answerData['value'] ?? 0);
                                    break;
                                default:
                                    $answer->title = $answerData['label'] ?? ucfirst($answer->type);
                                    break;
                            }

                            $answer->save();
                        }
                    } else {
                        Answer::create([
                            'question_id' => $question->id,
                            'title' => 'Réponse par défaut',
                            'is_correct' => true,
                            'type' => 'text',
                        ]);
                    }
                }
            }
        }

        return $quiz;
    }

    public function getTitle(): string
    {
        return __('messages.quiz.create_quiz');
    }

    protected function getCreatedNotificationTitle(): ?string
    {
        return __('messages.quiz.quiz_created_success');
    }

    protected function getRedirectUrl(): string
    {
        $recordId = $this->record->id ?? null;

        return $recordId ? $this->getResource()::getUrl('edit', ['record' => $recordId]) : $this->getResource()::getUrl('index');
    }

    protected function getFormActions(): array
    {
        return [
            parent::getFormActions()[0],
            Action::make('cancel')->label(__('messages.common.cancel'))->color('gray')->url(QuizzesResource::getUrl('index')),
        ];
    }
}
