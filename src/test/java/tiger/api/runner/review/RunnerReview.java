package tiger.api.runner.review;

import com.intuit.karate.junit5.Karate;

public class RunnerReview {
@Karate.Test

	public Karate runReviewTest() {
		//This is a test data for git bash
		return Karate.run("classpath:features").tags("@EndToEnd");
	}
}
