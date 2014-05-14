class BasePage

  def initialize(driver)
    @driver = driver
  end

  def visit(url_path)
    @driver.get ENV['base_url'] + url_path
  end

  def find(locator)
    @driver.find_element locator
  end

  def find_all(locator)
    @driver.find_elements locator
  end

  def select(locator, option)
    @driver.find_elements(locator)[option].click
  end

  def type(text, locator)
    find(locator).send_keys text
  end

  def submit(locator)
    find(locator).submit
  end

  def is_displayed?(locator)
    begin
      find(locator).displayed?
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end

  def click(locator)
    find(locator).click
  end

  def click_random(locator)
    find_all(locator).sample.click
  end

  def wait_for(seconds = 5)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

  def dropdown(locator)
    dropdown = @driver.find_element locator
    select_list = Selenium::WebDriver::Support::Select.new(dropdown)
    select_list.select_by(:value, "3")
  end

  def current_url
    @driver.current_url
  end

  def back
    @driver.navigate.back()
  end

  def title
    @driver.title
  end


end
