import ast
from AppiumLibrary import AppiumLibrary
from appium.webdriver.common.touch_action import TouchAction

class CustomKeywords(AppiumLibrary):

    def click_by_coordinates(self, x, y):
        driver = self._current_application()
        action = TouchAction(driver)
        action.tap(x=int(x), y=int(y)).perform()

    def extract_coordinates(self, coords_string):
        coords_dict = ast.literal_eval(coords_string)
        return coords_dict['x'], coords_dict['y']