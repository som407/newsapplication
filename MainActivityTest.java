package com.example.myapplication;

import junit.framework.TestCase;

import org.junit.Assert;
import org.junit.Test;

public class MainActivityTest extends TestCase {
    @Test
    public void testMain() {
        MainActivity test = new MainActivity ();
        Assert.assertNotNull(test);
    }
}