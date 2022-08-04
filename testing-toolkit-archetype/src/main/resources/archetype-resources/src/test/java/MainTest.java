package ${package};

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;

class MainTest {

  private Main cut;

  @BeforeEach
  void setUp() {
    this.cut = new Main();
  }

  @Test
  void firstTest() {
    String input = "duke";

    String result = cut.format(input);

    assertThat(result).isEqualTo("DUKE");
  }
}
