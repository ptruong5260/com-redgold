package com.redgold

class HomeController
{
    def index()
    {
        List featureItems = FeatureItem.getAll();
        return [featureItems: featureItems]
    }
}