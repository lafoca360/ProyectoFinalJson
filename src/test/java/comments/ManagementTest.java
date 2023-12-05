package comments;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class ManagementTest {
    @Test
    public void parallelTest(){
        //Runner.path("classpath:comments").tags().parallel(5); //karate reports
        Results results=Runner.path("classpath:comments").outputCucumberJson(true).tags().parallel(5);
        generateReport(results.getReportDir());
    }
    public static void generateReport(String karate){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karate), new String[]{"json"},true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("build"), "reporte-karate-json");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths,config);
        reportBuilder.generateReports();

    }
}
