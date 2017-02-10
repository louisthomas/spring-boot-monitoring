package org.ltlamontagne;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.metrics.CounterService;
import org.springframework.boot.actuate.metrics.GaugeService;
import org.springframework.context.annotation.Description;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@Description("A controller for handling requests for test")
public class TestController {

    @Autowired
    private GaugeService gaugeService;

    @Autowired
    private CounterService counterService;

    @GetMapping("test")
    public String test() {
        counterService.increment("test.service.count");
        gaugeService.submit("test.service.time", System.currentTimeMillis());
        return "test";
    }

}

