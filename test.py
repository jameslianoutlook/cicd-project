import app

def test_home():
    assert app.home() == "<h3>Sklearn Prediction Home</h3>"