# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = File.read('quiz.json')
data_hash = JSON.parse(file)
data_hash.each do |q|
  Asking.create(id: q['id'], selectedanswer: q['answers']['answer_a'], question: q['question'], description: q['description'], multiple_correct_answers: q['multiple_correct_answers'], correct_answer: q['correct_answer'], explanation: q['explanation'], category: q['category'], tip: q['tip'], difficulty: q['difficulty'], answer_a: q['answers']['answer_a'], answer_b: q['answers']['answer_b'], answer_c: q['answers']['answer_c'], answer_d: q['answers']['answer_d'], answer_e: q['answers']['answer_e'], answer_f: q['answers']['answer_f'], answer_a_correct: q['correct_answers']['answer_a_correct'], answer_b_correct: q['correct_answers']['answer_b_correct'], answer_c_correct: q['correct_answers']['answer_c_correct'], answer_d_correct: q['correct_answers']['answer_d_correct'], answer_e_correct: q['correct_answers']['answer_e_correct'], answer_f_correct: q['correct_answers']['answer_f_correct'], high_score: 0)
end