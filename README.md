Portfolio
=========

Single User Portfolio Application implemented with Responsive Design principles. It was developed using Ruby-on-Rails integrated with AngularJS and Bootstrap.

Example of use in <a href='https://rafaellimacuri.herokuapp.com' target='_blank'>https://rafaellimacuri.herokuapp.com</a>.

This application allow you to include records about Education, Academic Terms, Academic Courses, Companies, Jobs, Certificates, Publications and Projects. Additionally, you can associate tags, links, attachments and awards to any of these records.

The attachments must be stored in a S3 bucket. In order to do it you must have a AWS account (you can create one for free) and set the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and S3_BUCKET_NAME in config/application.yml. More about how to config the environment can be found in https://devcenter.heroku.com/articles/s3#s3-setup and https://github.com/laserlemon/figaro.

The records can be filtered by clicking in any tag: only the records associated to the active tags are shown. If there is not any active tag, then all records are shown. You have to click in the tags in order to activate/inactivate them.

You have to create an account in the <b>Admin Area</b> on /admin path in order to set your username and create the records. The ruby scripts in app/controllers/admin contain examples of how to create the records and associate the tags, links, awards and attachments, but you must be logged to do it. The remaining of the <b>Admin Area</b> is under construction.

<h3>TODO</h3>
- Improve the layout
- Conclude the Admin Area
