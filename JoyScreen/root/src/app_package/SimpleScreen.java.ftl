package ${packageName};

import android.os.Parcelable;
import com.google.auto.value.AutoValue;
import com.joybang.container.LayoutScreen;
import com.joybang.container.mortarflowglue.WithComponent;
import com.joybang.dagger.SingleIn;
import dagger.Subcomponent;
import flow.Flow;
import javax.inject.Inject;
import mortar.ViewPresenter;
<#if applicationPackage??>
import ${applicationPackage}.R;
</#if>

@LayoutScreen(R.layout.${screenViewLayoutName}) @WithComponent(${screenClass}.Component.class) @AutoValue
public abstract class ${screenClass} <#if hasInScreen>extends ${inScreenClass}</#if> implements Parcelable {
  public static ${screenClass} create() {
    return new AutoValue_${screenClass}();
  }

  @Subcomponent @SingleIn(${screenClass}.class) public interface Component {
    void inject(${screenName}View view);
  }

  @SingleIn(${screenClass}.class) public static class Presenter extends ViewPresenter<${screenName}View> {
    private final Flow flow;
    @Inject Presenter(Flow flow) {
      this.flow = flow;
    }
  }
}
