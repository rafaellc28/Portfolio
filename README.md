Portfolio
=========

Single User Portfolio Application implemented with Responsive Design principles. It was developed using Ruby-on-Rails integrated with AngularJS and Bootstrap.

Example of use in <a href='https://rafaellimacuri.herokuapp.com' target='_blank'>https://rafaellimacuri.herokuapp.com</a>.

This application allows you to include entries about Education, Academic Terms, Academic Courses, Companies, Jobs, Certificates, Publications and Projects. Additionally, you can associate tags, links, attachments and awards to any of these entries.

The attachments must be stored in a S3 bucket. In order to accomplish this you must have an AWS account (you can create one for free) and set the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and S3_BUCKET_NAME in config/application.yml. More information about how to configure the environment can be found in https://devcenter.heroku.com/articles/s3#s3-setup and https://github.com/laserlemon/figaro.

The entries can be filtered by clicking in any tag on the <b>tags section</b> (a togglable sidebar). Only the entries associated to the active tags are shown. If there isn't any active tag, then all entries are shown. You have to click in the tags in order to activate/inactivate them.

You need to create an account into the <b>Admin Area</b> on /admin to be able to set your username and create the entries. The ruby scripts in app/controllers/admin contain examples of how to create the entries and associate the tags, links, awards and attachments, but you must be logged in to accomplish this. The <b>Admin Area</b> has still to be concluded.

<h3>TODO</h3>
- Improve the layout
- Conclude the Admin Area
