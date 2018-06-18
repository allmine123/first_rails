### Rails

1. `vagrant` 서버실행

   **반드시 `Vagrantfile`이 있는 곳에서 실행해야함. (/student/vagrant)

   ```console
   $vagrant up
   $vagrant ssh
   $cd /vagrant
   ```

   

2.  새로운 Rails 프로젝트 생성

   ```console
   $rails new 프로젝트이름
   $cd 프로젝트이름
   ```

   

3. Rails 서버실행

   ```console
   $ rails s
   ```

4. 컨트롤러 생성

   ```console
   $ rails generate controller 이름 action1 이름 action2 이름
   ```

   

5. routes 및 페이지 설정

   ```ruby
   #config/routes.rb
   #localhost:3000으로 요청이 오면 home의 index를 실행
   root 'home#index'
   #localhost:3000/home/index로 요청이 오면, home 컨트롤러의 index 액션을 실행하세요.
   get 'home/index' => 'home#index'
   ```

   ```ruby
   #app/controller/home_controller.rb
   def index
   end
   ```

   ```erb
   <!-- app/views/home/index.html.erb -->
   안녕!
   ```

6. image는 img태그가 아니라 ruby의 image_tag로 해야 이미지가 적용된다.

7. Gemfile 수정후엔 반드시 console에서 `$bundle install`

8. 