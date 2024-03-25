//
//  EventViewMock.swift
//  eventProject
//
//  Created by Ainur on 25.03.2024.
//
import Foundation

struct Item: Identifiable {
    var id = UUID()
    var imageName: String
    var mainText: String
    var smallText: String
}

struct MockData {
    static let events: [Item] = [
        Item(imageName: "spect1", mainText: "Спектакль «унесенные ветром»", smallText: "Альметьевский татарский государственный драматический театр, г. Альметьевск, ул. Ленина, д. 37"),
        Item(imageName: "master1", mainText: "Книжная выставка «Мир семьи на страницах книг»", smallText: "Альметьевский филиал библиотеки для слепых им. Ш. К. Еникеева"),
        Item(imageName: "master2", mainText: "Мастер-класс «Арт-завтрак с Ильсияр Гайнутдиновой»", smallText: "Диджитал Академия Альметьевска"),
        Item(imageName: "master3", mainText: "Мастер-класс «Скетчинг маркерами»", smallText: "Диджитал Академия Альметьевска"),
        Item(imageName: "spect1", mainText: "Спектакль «Микулай»", smallText: "Альметьевский татарский государственный драматический театр"),
        Item(imageName: "spect3", mainText: "Мастер-класс «Арт-завтрак с Ильсияр Гайнутдиновой»", smallText: "Диджитал Академия Альметьевска"),
        Item(imageName: "image3", mainText: "Мастер-класс «Арт-завтрак с Ильсияр Гайнутдиновой»", smallText: "Диджитал Академия Альметьевска"),
        Item(imageName: "image3", mainText: "Мастер-класс «Арт-завтрак с Ильсияр Гайнутдиновой»", smallText: "Диджитал Академия Альметьевска")
    ]
}


