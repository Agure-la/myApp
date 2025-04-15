package dashboard;

import java.time.Duration;
import java.util.stream.Stream;

public class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
    OnboardingBloc() : super(OnboardingInitial());
    int pageIndex = 0;
    final pageController = PageController(initialPage: 0);

    @override
    Stream<OnboardingState> mapEventToState(
            OnboardingEvent event,
    ) async* {
        if (event is PageChangedEvent) {
            if (pageIndex == 2) {
                yield NextScreenState();
                return;
            }
            pageIndex += 1;

            pageController.animateToPage(
                    pageIndex,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
            );

            yield PageChangedEvent(counter: pageIndex);
        } else if (event is PageSwipedEvent){
            pageIndex = event.index;
            yield PageChangedState(counter: pageIndex);
        }
    }
}
