import 'package:core/widgets/cached_network_image.dart';
import 'package:core/widgets/custom_error_widget.dart';
import 'package:core/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home/presentation/manager/get_slider/slider_cubit.dart';
import 'package:provider/provider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PicturesSwiper extends StatelessWidget {
  const PicturesSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<SliderCubit, SliderState>(
      builder: (context, state) {
        final cubit = context.read<SliderCubit>();
        if (state is SliderLoading) {
          return LoadingWidget(
            height: 171.5.h,
          );
        } else if (state is SliderError) {
          return CustomErrorWidget(errMessage: state.message);
        }

        return size.width < 600
            ? SizedBox(
                height: 171.5.h,
                child: Swiper(
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                        borderRadius: BorderRadius.circular(16.r),
                        child: CachedImage(
                            image: cubit.sliderList[index].imageEntity));
                  },
                  itemCount: cubit.sliderList.length,
                  viewportFraction: 0.87,
                  scale: 0.9,
                ),
              )
            : SizedBox(
                height: 200.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                          borderRadius: BorderRadius.circular(16.r),
                          child: SizedBox(
                            width: 360,
                            child: CachedImage(
                                image: cubit.sliderList[index].imageEntity),
                          ));
                    },
                    itemCount: cubit.sliderList.length),
              );
      },
    );
  }
}
