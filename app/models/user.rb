class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
 
  VALID_NAME_REGEX = /\A[一-龥ぁ-んァ-ヶー]+\z/
  
  VALID_NAME_KANA_REGEX = /\A[ァ-ヶー]+\z/

  
  validates :nickname, presence: true

  
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: 'は半角英数字を混合して入力してください' }, if: :password_required?

  
  validates :last_name,  presence: true, format: { with: VALID_NAME_REGEX,  message: 'は全角（漢字・ひらがな・カタカナ）で入力してください' }
  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX,  message: 'は全角（漢字・ひらがな・カタカナ）で入力してください' }

  
  validates :last_name_kana,  presence: true, format: { with: VALID_NAME_KANA_REGEX, message: 'は全角（カタカナ）で入力してください' }
  validates :first_name_kana, presence: true, format: { with: VALID_NAME_KANA_REGEX, message: 'は全角（カタカナ）で入力してください' }

  
  validates :birth_date, presence: true
end
