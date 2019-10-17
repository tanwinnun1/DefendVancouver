//
// Created by Shrey Swades Nayak on 2018-04-14.
//

#include <iostream>
#include "HighScoreUI.hpp"
#include "UI.hpp"

HighScoreUI::HighScoreUI(UI &ui) : UIobject(ui) {}

HighScoreUI::~HighScoreUI() {
    destroy();
}

bool HighScoreUI::initGraphics() {
    return Digit::initGraphics();
}

bool HighScoreUI::init() {
    vec2 UIsize = m_ui->getScreenSize();
    auto firstDigit = std::make_shared<Digit>(*m_ui);
    if (firstDigit->init()) {
        m_digits.emplace_back(firstDigit);
    }
    auto secondDigit = std::make_shared<Digit>(*m_ui);
    if (secondDigit->init()) {
        m_digits.emplace_back(secondDigit);
    }
    auto thirdDigit = std::make_shared<Digit>(*m_ui);
    if (thirdDigit->init()) {
        m_digits.emplace_back(thirdDigit);
    }
    auto fourthDigit = std::make_shared<Digit>(*m_ui);
    if (fourthDigit->init()) {
        m_digits.emplace_back(fourthDigit);
    }
    auto fifthDigit = std::make_shared<Digit>(*m_ui);
    if (fifthDigit->init()) {
        m_digits.emplace_back(fifthDigit);
    }
    auto sixthDigit = std::make_shared<Digit>(*m_ui);
    if (sixthDigit->init()) {
        m_digits.emplace_back(sixthDigit);
    }
    auto seventhDigit = std::make_shared<Digit>(*m_ui);
    if (seventhDigit->init()) {
        m_digits.emplace_back(seventhDigit);
    }

    float x1 = 90.f;
    float x2 = 60.f;
    float x3 = 30.f;
    float y = UIsize.y/2;
    float denom = 2.5f;

    firstDigit->setPosition({(UIsize.x/denom)-x1, y});
    secondDigit->setPosition({(UIsize.x/denom)-x2, y});
    thirdDigit->setPosition({(UIsize.x/denom)-x3, y});
    fourthDigit->setPosition({(UIsize.x/denom), y});
    fifthDigit->setPosition({(UIsize.x/denom)+x3, y});
    sixthDigit->setPosition({(UIsize.x/denom)+x2, y});
    seventhDigit->setPosition({(UIsize.x/denom)+x1, y});

    return true;
}

void HighScoreUI::destroy() {
    for (auto &m_digit : m_digits) {
        m_digit->destroy();
    }
}

void HighScoreUI::draw(const mat3 &projection) {

    for (auto &m_digit : m_digits) {
        m_digit->draw(projection);
    }
}

void HighScoreUI::update(float ms) {
    highscore = m_ui->getBestScore();

    for(int i = 6; i>=0; i--){
        m_digits[i]->setDigit(highscore % 10);
        highscore /= 10;
    }
}