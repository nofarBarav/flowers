.class Landroid/support/constraint/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroid/support/constraint/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroid/support/constraint/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroid/support/constraint/ConstraintLayout;Landroid/support/constraint/ConstraintLayout;)V
    .registers 3

    .line 617
    iput-object p1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->this$0:Landroid/support/constraint/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .registers 7

    .line 609
    iput p3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingTop:I

    .line 610
    iput p4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingBottom:I

    .line 611
    iput p5, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 612
    iput p6, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingHeight:I

    .line 613
    iput p1, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 614
    iput p2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    return-void
.end method

.method public final didMeasures()V
    .registers 6

    .line 857
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1e

    .line 859
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 860
    instance-of v4, v3, Landroid/support/constraint/Placeholder;

    if-eqz v4, :cond_1b

    .line 861
    check-cast v3, Landroid/support/constraint/Placeholder;

    iget-object v4, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroid/support/constraint/Placeholder;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 865
    :cond_1e
    iget-object v0, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v0}, Landroid/support/constraint/ConstraintLayout;->access$000(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_40

    :goto_2a
    if-ge v1, v0, :cond_40

    .line 868
    iget-object v2, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-static {v2}, Landroid/support/constraint/ConstraintLayout;->access$000(Landroid/support/constraint/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 869
    iget-object v3, p0, Landroid/support/constraint/ConstraintLayout$Measurer;->layout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/support/constraint/ConstraintHelper;->updatePostMeasure(Landroid/support/constraint/ConstraintLayout;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_40
    return-void
.end method

.method public final measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    .line 628
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 629
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 630
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 631
    iput v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void

    .line 643
    :cond_1f
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    iget v6, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 652
    iget v8, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingTop:I

    iget v9, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v8, v9

    .line 653
    iget v9, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->paddingWidth:I

    .line 658
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 660
    sget-object v11, Landroid/support/constraint/ConstraintLayout$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v12

    aget v11, v11, v12

    const/4 v12, 0x4

    const/4 v14, -0x2

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v11, v5, :cond_a9

    if-eq v11, v15, :cond_9d

    if-eq v11, v13, :cond_8c

    if-eq v11, v12, :cond_4d

    const/4 v6, 0x0

    :goto_4a
    const/4 v9, 0x0

    goto/16 :goto_b5

    .line 680
    :cond_4d
    iget v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 682
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v9, v5, :cond_59

    const/4 v9, 0x1

    goto :goto_5a

    :cond_59
    const/4 v9, 0x0

    .line 683
    :goto_5a
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v11, v15

    .line 684
    iget-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v11, :cond_a7

    if-eqz v9, :cond_76

    .line 685
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v13

    if-eqz v11, :cond_76

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v16

    .line 687
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    if-ne v11, v12, :cond_7a

    :cond_76
    instance-of v11, v10, Landroid/support/constraint/Placeholder;

    if-eqz v11, :cond_7c

    :cond_7a
    const/4 v11, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v11, 0x0

    :goto_7d
    if-eqz v9, :cond_81

    if-eqz v11, :cond_a7

    .line 691
    :cond_81
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4a

    .line 674
    :cond_8c
    iget v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v11

    add-int/2addr v9, v11

    const/4 v11, -0x1

    .line 674
    invoke-static {v6, v9, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 676
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v9, v15

    goto :goto_4a

    .line 667
    :cond_9d
    iget v6, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutWidthSpec:I

    invoke-static {v6, v9, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    .line 669
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v14, v9, v15

    :cond_a7
    const/4 v9, 0x1

    goto :goto_b5

    :cond_a9
    const/high16 v9, 0x40000000    # 2.0f

    .line 662
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 663
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v9, v15

    move v6, v11

    goto :goto_4a

    .line 699
    :goto_b5
    sget-object v11, Landroid/support/constraint/ConstraintLayout$1;->$SwitchMap$android$support$constraint$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_127

    if-eq v11, v15, :cond_11a

    if-eq v11, v13, :cond_108

    const/4 v7, 0x4

    if-eq v11, v7, :cond_ca

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto/16 :goto_132

    .line 720
    :cond_ca
    iget v7, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 723
    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v8, v5, :cond_d6

    const/4 v8, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v8, 0x0

    .line 724
    :goto_d7
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v12, 0x0

    aput v12, v11, v13

    .line 725
    iget-boolean v11, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v11, :cond_124

    if-eqz v8, :cond_f2

    .line 726
    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v15

    if-eqz v11, :cond_f2

    iget-object v11, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v11, v11, v5

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v12

    if-ne v11, v12, :cond_f6

    :cond_f2
    instance-of v11, v10, Landroid/support/constraint/Placeholder;

    if-eqz v11, :cond_f8

    :cond_f6
    const/4 v11, 0x1

    goto :goto_f9

    :cond_f8
    const/4 v11, 0x0

    :goto_f9
    if-eqz v8, :cond_fd

    if-eqz v11, :cond_124

    .line 731
    :cond_fd
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_118

    .line 714
    :cond_108
    iget v7, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v11

    add-int/2addr v8, v11

    const/4 v11, -0x1

    .line 714
    invoke-static {v7, v8, v11}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 716
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v11, v8, v13

    :goto_118
    move v11, v7

    goto :goto_131

    .line 706
    :cond_11a
    iget v7, v0, Landroid/support/constraint/ConstraintLayout$Measurer;->layoutHeightSpec:I

    invoke-static {v7, v8, v14}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v7

    .line 709
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v14, v8, v13

    :cond_124
    move v11, v7

    const/4 v7, 0x1

    goto :goto_132

    :cond_127
    const/high16 v8, 0x40000000    # 2.0f

    .line 701
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 702
    iget-object v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v8, v13

    :goto_131
    const/4 v7, 0x0

    .line 739
    :goto_132
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v8, :cond_138

    const/4 v8, 0x1

    goto :goto_139

    :cond_138
    const/4 v8, 0x0

    .line 740
    :goto_139
    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v12, :cond_13f

    const/4 v12, 0x1

    goto :goto_140

    :cond_13f
    const/4 v12, 0x0

    .line 742
    :goto_140
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v14, :cond_14b

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v14, :cond_149

    goto :goto_14b

    :cond_149
    const/4 v4, 0x0

    goto :goto_14c

    :cond_14b
    :goto_14b
    const/4 v4, 0x1

    .line 744
    :goto_14c
    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v14, :cond_157

    sget-object v14, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v14, :cond_155

    goto :goto_157

    :cond_155
    const/4 v3, 0x0

    goto :goto_158

    :cond_157
    :goto_157
    const/4 v3, 0x1

    :goto_158
    const/4 v14, 0x0

    if-eqz v8, :cond_163

    .line 746
    iget v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_163

    const/4 v13, 0x1

    goto :goto_164

    :cond_163
    const/4 v13, 0x0

    :goto_164
    if-eqz v12, :cond_16e

    .line 747
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v14

    if-lez v5, :cond_16e

    const/4 v5, 0x1

    goto :goto_16f

    :cond_16e
    const/4 v5, 0x0

    .line 749
    :goto_16f
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 755
    iget-boolean v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v15, :cond_18e

    if-eqz v8, :cond_18e

    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v8, :cond_18e

    if-eqz v12, :cond_18e

    iget v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v8, :cond_186

    goto :goto_18e

    :cond_186
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto/16 :goto_251

    .line 759
    :cond_18e
    :goto_18e
    instance-of v8, v10, Landroid/support/constraint/VirtualLayout;

    if-eqz v8, :cond_1a0

    instance-of v8, v1, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v8, :cond_1a0

    .line 760
    move-object v8, v1

    check-cast v8, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 761
    move-object v12, v10

    check-cast v12, Landroid/support/constraint/VirtualLayout;

    invoke-virtual {v12, v8, v6, v11}, Landroid/support/constraint/VirtualLayout;->onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V

    goto :goto_1a3

    .line 763
    :cond_1a0
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 766
    :goto_1a3
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 767
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 768
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v15

    if-eqz v9, :cond_1be

    .line 779
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v8, v9, v16

    .line 780
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v18, 0x2

    aput v12, v9, v18

    goto :goto_1ca

    :cond_1be
    const/16 v16, 0x0

    const/16 v18, 0x2

    .line 782
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v16

    .line 783
    iget-object v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v9, v18

    :goto_1ca
    if-eqz v7, :cond_1d8

    .line 786
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/4 v9, 0x1

    aput v12, v7, v9

    .line 787
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v17, 0x3

    aput v8, v7, v17

    goto :goto_1e3

    :cond_1d8
    const/4 v9, 0x1

    const/16 v17, 0x3

    .line 789
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v7, v9

    .line 790
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v7, v17

    .line 793
    :goto_1e3
    iget v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v7, :cond_1ee

    .line 794
    iget v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1ef

    :cond_1ee
    move v7, v8

    .line 796
    :goto_1ef
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v9, :cond_1f9

    .line 797
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 799
    :cond_1f9
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v9, :cond_204

    .line 800
    iget v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_205

    :cond_204
    move v9, v12

    .line 802
    :goto_205
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v0, :cond_20f

    .line 803
    iget v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_20f
    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz v13, :cond_21e

    if-eqz v4, :cond_21e

    .line 807
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v9

    mul-float v4, v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v7, v0

    goto :goto_229

    :cond_21e
    if-eqz v5, :cond_229

    if-eqz v3, :cond_229

    .line 810
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    int-to-float v4, v7

    div-float/2addr v4, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    move v9, v0

    :cond_229
    :goto_229
    if-ne v8, v7, :cond_232

    if-eq v12, v9, :cond_22e

    goto :goto_232

    :cond_22e
    move v0, v7

    move v3, v9

    :goto_230
    const/4 v4, -0x1

    goto :goto_251

    :cond_232
    :goto_232
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v8, v7, :cond_23a

    .line 816
    invoke-static {v7, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :cond_23a
    if-eq v12, v9, :cond_240

    .line 819
    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 821
    :cond_240
    invoke-virtual {v10, v6, v11}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 823
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 824
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v4

    move v15, v4

    goto :goto_230

    :goto_251
    if-eq v15, v4, :cond_255

    const/4 v4, 0x1

    goto :goto_256

    :cond_255
    const/4 v4, 0x0

    .line 835
    :goto_256
    iget v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v0, v5, :cond_261

    iget v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v3, v5, :cond_25f

    goto :goto_261

    :cond_25f
    const/4 v5, 0x0

    goto :goto_262

    :cond_261
    :goto_261
    const/4 v5, 0x1

    :goto_262
    iput-boolean v5, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 837
    iget-boolean v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v5, :cond_26a

    const/4 v9, 0x1

    goto :goto_26b

    :cond_26a
    move v9, v4

    :goto_26b
    if-eqz v9, :cond_279

    const/4 v4, -0x1

    if-eq v15, v4, :cond_279

    .line 840
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    if-eq v1, v15, :cond_279

    const/4 v1, 0x1

    .line 841
    iput-boolean v1, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 843
    :cond_279
    iput v0, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 844
    iput v3, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 845
    iput-boolean v9, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 846
    iput v15, v2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    return-void
.end method
