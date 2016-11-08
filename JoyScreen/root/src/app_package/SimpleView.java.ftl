package ${packageName};

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import com.joybang.dagger.Components;
import javax.inject.Inject;

public class ${screenViewClass} extends RelativeLayout {
  @Inject ${screenClass}.Presenter presenter;

  public ${screenViewClass}(Context context, AttributeSet attrs) {
    super(context, attrs);
    Components.component(context, ${screenClass}.Component.class).inject(this);
  }

  @Override protected void onFinishInflate() {
    super.onFinishInflate();
  }

  @Override protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    presenter.takeView(this);
  }

  @Override protected void onDetachedFromWindow() {
    presenter.dropView(this);
    super.onDetachedFromWindow();
  }
}
