from django.conf.urls import url
from hello.views import HomePageView
# test
urlpatterns = [
    url(r'^$', HomePageView.as_view(), name='home'),
]
