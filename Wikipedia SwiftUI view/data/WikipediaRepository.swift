//
//  wikipediaRepository.swift
//  Wikipedia SwiftUI view
//
//  Created by Arthur Pauwels on 08/08/2020.
//

//Because I'm focussing on the views, all this data is mocked and the Model layer is kept very simple

import Foundation

struct WikipediaRepository {
    static func getOneExampleArticle() ->Article {
        return Article(
            title: "Alexander Hamilton",
            subtitle:"First Secretary of the Treasury and Founding Father of the United States",
            description:"Alexander Hamilton (January 11, 1755 or 1757 – July 12, 1804) was an American statesman, politician, legal scholar, military commander, lawyer, banker, and economist. He was one of the Founding Fathers of the United States. He was an influential interpreter and promoter of the U.S. Constitution, as well as the founder of the nation's financial system, the Federalist Party, the United States Coast Guard, and the New York Post newspaper. As the first secretary of the treasury, Hamilton was the main author of the economic policies of George Washington's administration. He took the lead in the Federal government's funding of the states' debts, as well as establishing the nation's first two de facto central banks, the Bank of North America and the First Bank of the United States, a system of tariffs, and friendly trade relations with Britain. His vision included a strong central government led by a vigorous executive branch, a strong commercial economy, government-controlled banks, support for manufacturing, and a strong military.",
            image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Alexander_Hamilton_portrait_by_John_Trumbull_1806.jpg/220px-Alexander_Hamilton_portrait_by_John_Trumbull_1806.jpg",
            feedType: "Featured article",
            feedWikiSource: "From English Wikipedia")
    }
    
    static func getOneExamplePictureOfTheDay() -> PictureOfTheDay {
        return PictureOfTheDay(
            description: "The Kiss (in German Der Kuss) is an oil-on-canvas painting with added gold leaf, silver and platinum. by the Austrian Symbolist painter Gustav Klimt. It was painted at some point in 1907 and 1908, during the height of what scholars call his \"Golden Period\". It was exhibited in 1908 under the title Liebespaar (the lovers) as stated in the catalogue of the exhibition. The painting depicts a couple embracing each other, their bodies entwined in elaborate beautiful robes decorated in a style influenced by the contemporary Art Nouveau style and the organic forms of the earlier Arts and Crafts movement. The painting now hangs in the Österreichische Galerie Belvedere museum in the Belvedere, Vienna, and is considered a masterpiece of Vienna Secession (local variation of Art Nouveau) and Klimt's most popular work.",
            image: "https://upload.wikimedia.org/wikipedia/commons/4/40/The_Kiss_-_Gustav_Klimt_-_Google_Cultural_Institute.jpg",
            feedWikiSource: "From Wikimedia Commons")
    }
    
    static func getOneExampleArtcleList() -> ArticleList {
        return ArticleList(articles: [
            Article(
                title: "The Umbrella Academy (TV series)",
                subtitle: "American superhero web television series",
                description: "The Umbrella Academy is an American superhero web television series based on the comic book series of the same name written by Gerard Way. Created for Netflix by Steve Blackman and developed by Jeremy Slater, it revolves around a dysfunctional family of adopted sibling superheroes who reunite to solve the mystery of their father's death and the threat of an impending apocalypse. The series is produced by Borderline Entertainment, Dark Horse Entertainment, and Universal Cable Productions.",
                image: "https://i.ytimg.com/vi/5eDfKjbEJtQ/maxresdefault.jpg",
                feedType: "Top read article",
                feedWikiSource: "From English Wikipedia"),
            Article(
                title: "Shakuntala Devi",
                subtitle: "Indian writer and mental calculator (1929–2013)",
                description: "Shakuntala Devi (Kannada: ಶಕುಂತಲಾ ದೇವಿ; 4 November 1929 – 21 April 2013) was an Indian writer and mental calculator, popularly known as the \"Human Computer\". Devi strove to simplify mathematics for students. Her talent earned her a place in the 1982 edition of The Guinness Book of World Records. However, the certificate for the record was given posthumously on 30 July 2020, despite Devi achieving her world record on 18 June 1980 at Imperial College, London. Devi was a precocious child and she demonstrated her arithmetic abilities at the University of Mysore without any formal education.",
                image: "https://upload.wikimedia.org/wikipedia/en/5/5c/Shakuntala_Devi_%28writer_and_mental_calculator%29.jpg",
                feedType: "Top read article",
                feedWikiSource: "From English Wikipedia"),
            Article(
                title: "2020 Beirut explosions",
                subtitle: "Explosions in Beirut, Lebanon",
                description: "On the afternoon of 4 August 2020, two explosions occurred at the port of the city of Beirut, the capital of Lebanon. The extremely powerful second blast resulted in at least 158 deaths, 6,000 injuries, and US$10–15 billion in property damage, and made an estimated 300,000 people homeless. The blast has been linked to about 2,750 tonnes (3,030 short tons; 2,710 long tons) of ammonium nitrate – equivalent to around 1.2 kt of TNT equivalent – that had been confiscated by the Lebanese government from the abandoned ship MV Rhosus and stored in the port without proper safety measures for six years.",
                image: "https://upload.wikimedia.org/wikipedia/commons/9/9e/Aftermath_of_the_2020_Beirut_explosions_august_6_2020_09.jpg",
                feedType: "Top read article",
                feedWikiSource: "From English Wikipedia"),
//            Article(
//                title: <#T##String#>,
//                subtitle: <#T##String#>,
//                description: <#T##String#>,
//                image: <#T##String?#>,
//                feedType: "Top read article",
//                feedWikiSource: "From English Wikipedia"),
            Article(
                title: "Miriam Makeba",
                subtitle:"South African singer and civil rights activist",
                description:"Zenzile Miriam Makeba (4 March 1932 – 9 November 2008), nicknamed Mama Africa, was a South African singer, songwriter, actress, United Nations goodwill ambassador, and civil rights activist. Associated with musical genres including Afropop, jazz, and world music, she was an advocate against apartheid and white-minority government in South Africa.",
                image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Miriam_makeba_01.jpg/260px-Miriam_makeba_01.jpg",
                feedType: "Top read article",
                feedWikiSource: "From English Wikipedia"),
            Article(
                title: "Great Zimbabwe",
                subtitle:"ruins of a historical city in Zimbabwe",
                description:"Great Zimbabwe is a ruined city in the south-eastern hills of Zimbabwe near Lake Mutirikwe and the town of Masvingo. It was the capital of the Kingdom of Zimbabwe during the country's Late Iron Age. Construction on the city began in the 11th century and continued until it was abandoned in the 15th century. The edifices were erected by the ancestral Shona. The stone city spans an area of 7.22 square kilometres (2.79 square miles) which, at its peak, could have housed up to 18,000 people. It is recognised as a World Heritage site by UNESCO.",
                image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Great-Zimbabwe-2.jpg/220px-Great-Zimbabwe-2.jpg",
                feedType: "Top read article",
                feedWikiSource: "From English Wikipedia"),
        ], feedWikiSource: "On English Wikipedia")
    }
    
    static func getFeed() -> [FeedItem] {
        return [
            getOneExampleArticle(),
            getOneExamplePictureOfTheDay(),
            getOneExampleArtcleList(),
            getOneExampleArtcleList().articles[0],
            getOneExampleArtcleList().articles[1],
            getOneExampleArtcleList().articles[2]
        ]
    }
}
