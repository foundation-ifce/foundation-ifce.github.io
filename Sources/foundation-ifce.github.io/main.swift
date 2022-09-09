import Foundation
import Publish
import SplashPublishPlugin
import Plot

// This type acts as the configuration for your website.
struct FoundationIfceGithubIo: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://foundation-ifce.github.io")!
    var name = "Foundation IFCE"
    var description = ""
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try FoundationIfceGithubIo()
    .publish(using: [
        .installPlugin(.splash(withClassPrefix: "")),
        .addMarkdownFiles(),
        .generateHTML(withTheme: .basic),
        .deploy(using: .gitHub("foundation-ifce/foundation-ifce.github.io", branch: "main", useSSH: false))
    ])
