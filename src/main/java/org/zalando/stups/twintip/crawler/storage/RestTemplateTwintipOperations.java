package org.zalando.stups.twintip.crawler.storage;

import org.springframework.util.Assert;
import org.springframework.web.client.RestOperations;

import java.util.HashMap;
import java.util.Map;

public class RestTemplateTwintipOperations {

    private final RestOperations restOperations;
    private final String baseUrl;

    public RestTemplateTwintipOperations(RestOperations restOperations, String baseUrl) {
        this.restOperations = restOperations;
        this.baseUrl = baseUrl;
    }

    public void createOrUpdateApiDefintion(CreateOrUpdateApiDefinitionRequest request, String applicationId) {
        Assert.hasText(applicationId, "applicationId must not be blank");

        final Map<String, String> uriVariables = new HashMap<>();
        uriVariables.put("applicationId", applicationId);
        restOperations.put(baseUrl + "/apps/{applicationId}", request, uriVariables);
    }
}
