package group6.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class DiamondPriceExtractor {

  public static DiamondPriceData extractPrices() throws IOException {
    Document doc = Jsoup.connect("https://www.diamonds.pro/education/diamond-prices/").get();
    Elements tableRows = doc.select("table tbody tr");

    DiamondPriceData prices = new DiamondPriceData();
    for (Element row : tableRows) {
      Elements cols = row.select("td");
      if (cols.size() == 4) {
        String carat = cols.get(0).text();
        String pricePerCarat = cols.get(1).text();
        String totalPrice = cols.get(2).text();
        String exampleUrl = cols.get(3).child(0).attr("href");
        prices.addPrice(carat, pricePerCarat, totalPrice, exampleUrl);
      }
    }
    return prices;
  }
}

class DiamondPriceData {
  private List<PriceEntry> prices;

  public DiamondPriceData() {
    prices = new ArrayList<>();
  }

  public void addPrice(String carat, String pricePerCarat, String totalPrice, String exampleUrl) {
    prices.add(new PriceEntry(carat, pricePerCarat, totalPrice, exampleUrl));
  }

  public List<PriceEntry> getPrices() {
    return prices;
  }
}

class PriceEntry {
  private String carat;
  private String pricePerCarat;
  private String totalPrice;
  private String exampleUrl;

  public PriceEntry(String carat, String pricePerCarat, String totalPrice, String exampleUrl) {
    this.carat = carat;
    this.pricePerCarat = pricePerCarat;
    this.totalPrice = totalPrice;
    this.exampleUrl = exampleUrl;
  }

  // Getters and setters omitted for brevity
}
