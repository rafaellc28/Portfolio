Portfolio
=========

Single User Online Portfolio Application developed using RubyOnRails integrated with AngularJS and Bootstrap.

Example of use in <a href='https://rafaellimacuri.herokuapp.com' target='_blank'>https://rafaellimacuri.herokuapp.com</a>.

This application allow you to include records about Education, Academic Terms, Academic Courses, Companies, Jobs, Certificates, Publications and Projects. Additionally, you can include tags, links, attachments and awards to any of these records.

The attachments must be stored in a S3 bucket. In order to do it you must have a AWS account (you can create one for free) and set the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and S3_BUCKET_NAME in config/application.yml. More about how to config the environment can be found in https://devcenter.heroku.com/articles/s3#s3-setup and https://github.com/laserlemon/figaro.

The ruby scripts in app/controllers/admin contain examples of how to create the records and associate the tags, links, awards and attachments. The <b>Admin Area</b> is under construction.

<h3>TODO</h3>
- Implement a Responsive Layout
- Implement the Admin Area
