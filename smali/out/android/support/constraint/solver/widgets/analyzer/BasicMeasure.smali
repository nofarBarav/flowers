.class public Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;,
        Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$MeasureType;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 75
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-void
.end method

.method private measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z
    .registers 9

    .line 403
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 404
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 405
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 406
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 407
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 408
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 410
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object p3, p3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne p3, v0, :cond_34

    const/4 p3, 0x1

    goto :goto_35

    :cond_34
    const/4 p3, 0x0

    .line 411
    :goto_35
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v3, :cond_3f

    const/4 v0, 0x1

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    const/4 v3, 0x0

    if-eqz p3, :cond_4b

    .line 412
    iget p3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float p3, p3, v3

    if-lez p3, :cond_4b

    const/4 p3, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p3, 0x0

    :goto_4c
    if-eqz v0, :cond_56

    .line 413
    iget v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_56

    const/4 v0, 0x1

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    const/4 v3, 0x4

    if-eqz p3, :cond_66

    .line 416
    iget-object p3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p3, p3, v1

    if-ne p3, v3, :cond_66

    .line 417
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v4, p3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_66
    if-eqz v0, :cond_74

    .line 421
    iget-object p3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget p3, p3, v2

    if-ne p3, v3, :cond_74

    .line 422
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v0, p3, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 426
    :cond_74
    iget-object p3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, p3}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 427
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p1, p1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 428
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p1, p1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 429
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p1, p1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 430
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p1, p1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 431
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, p1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    .line 432
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p1, p1, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return p1
.end method

.method private measureChildren(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 11

    .line 79
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_5d

    .line 82
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 83
    instance-of v5, v4, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v5, :cond_1b

    goto :goto_5a

    .line 87
    :cond_1b
    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_2c

    iget-object v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v5, :cond_2c

    goto :goto_5a

    .line 91
    :cond_2c
    invoke-virtual {v4, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    const/4 v6, 0x1

    .line 92
    invoke-virtual {v4, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 94
    sget-object v8, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_46

    iget v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v5, v6, :cond_46

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v5, :cond_46

    iget v5, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v5, v6, :cond_46

    goto :goto_47

    :cond_46
    const/4 v6, 0x0

    :goto_47
    if-eqz v6, :cond_4a

    goto :goto_5a

    .line 105
    :cond_4a
    invoke-direct {p0, v1, v4, v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z

    .line 106
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v4, :cond_5a

    .line 107
    iget-object v4, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v5, v4, Landroid/support/constraint/solver/Metrics;->measuredWidgets:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/support/constraint/solver/Metrics;->measuredWidgets:J

    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 110
    :cond_5d
    invoke-interface {v1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    return-void
.end method

.method private solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .registers 7

    .line 119
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result p2

    .line 120
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 123
    invoke-virtual {p1, p3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 124
    invoke-virtual {p1, p4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 125
    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 130
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->layout()V

    return-void
.end method


# virtual methods
.method public solverMeasure(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 159
    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    const/16 v9, 0x80

    .line 163
    invoke-static {v2, v9}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_30

    const/16 v12, 0x40

    .line 164
    invoke-static {v2, v12}, Landroid/support/constraint/solver/widgets/Optimizer;->enabled(II)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v2, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v2, 0x1

    :goto_31
    if-eqz v2, :cond_8c

    const/4 v12, 0x0

    :goto_34
    if-ge v12, v6, :cond_8c

    .line 168
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 169
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v14

    sget-object v15, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v14, v15, :cond_48

    const/4 v14, 0x1

    goto :goto_49

    :cond_48
    const/4 v14, 0x0

    .line 170
    :goto_49
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v11, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v11, :cond_53

    const/4 v11, 0x1

    goto :goto_54

    :cond_53
    const/4 v11, 0x0

    :goto_54
    if-eqz v14, :cond_63

    if-eqz v11, :cond_63

    .line 171
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v11

    const/4 v14, 0x0

    cmpl-float v11, v11, v14

    if-lez v11, :cond_63

    const/4 v11, 0x1

    goto :goto_64

    :cond_63
    const/4 v11, 0x0

    .line 172
    :goto_64
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v14

    if-eqz v14, :cond_6e

    if-eqz v11, :cond_6e

    :cond_6c
    :goto_6c
    const/4 v2, 0x0

    goto :goto_8c

    .line 176
    :cond_6e
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v14

    if-eqz v14, :cond_77

    if-eqz v11, :cond_77

    goto :goto_6c

    .line 180
    :cond_77
    instance-of v11, v13, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v11, :cond_7c

    goto :goto_6c

    .line 184
    :cond_7c
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v11

    if-nez v11, :cond_6c

    .line 185
    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v11

    if-eqz v11, :cond_89

    goto :goto_6c

    :cond_89
    add-int/lit8 v12, v12, 0x1

    goto :goto_34

    :cond_8c
    :goto_8c
    const-wide/16 v11, 0x1

    if-eqz v2, :cond_9b

    .line 192
    sget-object v13, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v13, :cond_9b

    .line 193
    sget-object v13, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v14, v13, Landroid/support/constraint/solver/Metrics;->measures:J

    add-long/2addr v14, v11

    iput-wide v14, v13, Landroid/support/constraint/solver/Metrics;->measures:J

    :cond_9b
    const/high16 v13, 0x40000000    # 2.0f

    if-ne v3, v13, :cond_a1

    if-eq v4, v13, :cond_a3

    :cond_a1
    if-eqz v9, :cond_a5

    :cond_a3
    const/4 v14, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v14, 0x0

    :goto_a6
    and-int/2addr v2, v14

    const/4 v14, 0x2

    if-eqz v2, :cond_116

    .line 206
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v2

    move/from16 v15, p6

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v15

    move/from16 v11, p8

    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-ne v3, v13, :cond_cc

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v12

    if-eq v12, v2, :cond_cc

    .line 210
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_cc
    if-ne v4, v13, :cond_da

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    if-eq v2, v11, :cond_da

    .line 214
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :cond_da
    if-ne v3, v13, :cond_e4

    if-ne v4, v13, :cond_e4

    .line 218
    invoke-virtual {v1, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    const/4 v9, 0x2

    goto :goto_106

    .line 221
    :cond_e4
    invoke-virtual {v1, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    if-ne v3, v13, :cond_f2

    .line 223
    invoke-virtual {v1, v9, v10}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v11

    and-int/2addr v2, v11

    move v11, v2

    const/4 v2, 0x1

    goto :goto_f4

    :cond_f2
    move v11, v2

    const/4 v2, 0x0

    :goto_f4
    if-ne v4, v13, :cond_104

    const/4 v12, 0x1

    .line 227
    invoke-virtual {v1, v9, v12}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v9

    and-int/2addr v9, v11

    add-int/lit8 v2, v2, 0x1

    move/from16 v21, v9

    move v9, v2

    move/from16 v2, v21

    goto :goto_106

    :cond_104
    move v9, v2

    move v2, v11

    :goto_106
    if-eqz v2, :cond_118

    if-ne v3, v13, :cond_10c

    const/4 v3, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v3, 0x0

    :goto_10d
    if-ne v4, v13, :cond_111

    const/4 v4, 0x1

    goto :goto_112

    :cond_111
    const/4 v4, 0x0

    .line 232
    :goto_112
    invoke-virtual {v1, v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    goto :goto_118

    :cond_116
    const/4 v2, 0x0

    const/4 v9, 0x0

    :cond_118
    :goto_118
    if-eqz v2, :cond_11c

    if-eq v9, v14, :cond_32c

    :cond_11c
    if-lez v6, :cond_121

    .line 247
    invoke-direct/range {p0 .. p1}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V

    .line 252
    :cond_121
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v2

    .line 255
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v6, :cond_132

    const-string v4, "First pass"

    .line 259
    invoke-direct {v0, v1, v4, v7, v8}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    :cond_132
    if-lez v3, :cond_329

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_13e

    const/4 v12, 0x1

    goto :goto_13f

    :cond_13e
    const/4 v12, 0x0

    .line 270
    :goto_13f
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_149

    const/4 v4, 0x1

    goto :goto_14a

    :cond_149
    const/4 v4, 0x0

    .line 272
    :goto_14a
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    iget-object v9, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v9

    iget-object v11, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v11}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_168
    if-ge v11, v3, :cond_206

    .line 279
    iget-object v15, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 280
    instance-of v10, v15, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-nez v10, :cond_17e

    move/from16 p5, v2

    move/from16 v16, v7

    move/from16 v17, v8

    goto/16 :goto_1fa

    .line 283
    :cond_17e
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    .line 284
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    move/from16 p5, v2

    const/4 v2, 0x1

    .line 285
    invoke-direct {v0, v5, v15, v2}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z

    move-result v16

    or-int v2, v13, v16

    .line 286
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v13, :cond_1a2

    .line 287
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v16, v7

    move/from16 v17, v8

    iget-wide v7, v13, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    iput-wide v7, v13, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_1a6

    :cond_1a2
    move/from16 v16, v7

    move/from16 v17, v8

    .line 289
    :goto_1a6
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 290
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    if-eq v7, v10, :cond_1d0

    .line 292
    invoke-virtual {v15, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v12, :cond_1cf

    .line 293
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    if-le v2, v6, :cond_1cf

    .line 294
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 295
    invoke-virtual {v15, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v2, v7

    .line 296
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v6, v2

    :cond_1cf
    const/4 v2, 0x1

    :cond_1d0
    if-eq v8, v14, :cond_1f2

    .line 301
    invoke-virtual {v15, v8}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v4, :cond_1f1

    .line 302
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_1f1

    .line 303
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 304
    invoke-virtual {v15, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v2, v7

    .line 305
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v9, v2

    :cond_1f1
    const/4 v2, 0x1

    .line 309
    :cond_1f2
    check-cast v15, Landroid/support/constraint/solver/widgets/VirtualLayout;

    .line 310
    invoke-virtual {v15}, Landroid/support/constraint/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v7

    or-int v13, v2, v7

    :goto_1fa
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p5

    move/from16 v7, v16

    move/from16 v8, v17

    const/4 v10, 0x0

    const/4 v14, 0x2

    goto/16 :goto_168

    :cond_206
    move/from16 p5, v2

    move/from16 v16, v7

    move/from16 v17, v8

    const/4 v2, 0x0

    const/4 v7, 0x2

    :goto_20e
    if-ge v2, v7, :cond_2fd

    const/4 v8, 0x0

    :goto_211
    if-ge v8, v3, :cond_2db

    .line 317
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 318
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/Helper;

    if-eqz v11, :cond_223

    instance-of v11, v10, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v11, :cond_246

    :cond_223
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v11, :cond_228

    goto :goto_246

    .line 321
    :cond_228
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    const/16 v14, 0x8

    if-ne v11, v14, :cond_231

    goto :goto_246

    .line 324
    :cond_231
    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v11, :cond_242

    iget-object v11, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v11, v11, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v11, v11, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v11, :cond_242

    goto :goto_246

    .line 327
    :cond_242
    instance-of v11, v10, Landroid/support/constraint/solver/widgets/VirtualLayout;

    if-eqz v11, :cond_24e

    :cond_246
    :goto_246
    move/from16 v18, v2

    move/from16 p6, v3

    const-wide/16 v19, 0x1

    goto/16 :goto_2d2

    .line 331
    :cond_24e
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    .line 332
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 333
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    const/4 v7, 0x1

    .line 335
    invoke-direct {v0, v5, v10, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->measure(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)Z

    move-result v18

    or-int v13, v13, v18

    .line 336
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v7, :cond_274

    .line 337
    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v18, v2

    move/from16 p6, v3

    iget-wide v2, v7, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    const-wide/16 v19, 0x1

    add-long v2, v2, v19

    iput-wide v2, v7, Landroid/support/constraint/solver/Metrics;->measuredMatchWidgets:J

    goto :goto_27a

    :cond_274
    move/from16 v18, v2

    move/from16 p6, v3

    const-wide/16 v19, 0x1

    .line 340
    :goto_27a
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    .line 341
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    if-eq v2, v11, :cond_2a3

    .line 344
    invoke-virtual {v10, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    if-eqz v12, :cond_2a2

    .line 345
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    if-le v2, v6, :cond_2a2

    .line 346
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 347
    invoke-virtual {v10, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    add-int/2addr v2, v7

    .line 348
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_2a2
    const/4 v13, 0x1

    :cond_2a3
    if-eq v3, v14, :cond_2c5

    .line 353
    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    if-eqz v4, :cond_2c4

    .line 354
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_2c4

    .line 355
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;

    .line 356
    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getAnchor(Landroid/support/constraint/solver/widgets/ConstraintAnchor$Type;)Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v3

    add-int/2addr v2, v3

    .line 357
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v9, v2

    :cond_2c4
    const/4 v13, 0x1

    .line 361
    :cond_2c5
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_2d2

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    if-eq v15, v2, :cond_2d2

    const/4 v13, 0x1

    :cond_2d2
    :goto_2d2
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p6

    move/from16 v2, v18

    const/4 v7, 0x2

    goto/16 :goto_211

    :cond_2db
    move/from16 v18, v2

    move/from16 p6, v3

    const-wide/16 v19, 0x1

    if-eqz v13, :cond_2ee

    const-string v2, "intermediate pass"

    move/from16 v3, v16

    move/from16 v7, v17

    .line 366
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    const/4 v13, 0x0

    goto :goto_2f2

    :cond_2ee
    move/from16 v3, v16

    move/from16 v7, v17

    :goto_2f2
    add-int/lit8 v2, v18, 0x1

    move/from16 v16, v3

    move/from16 v17, v7

    const/4 v7, 0x2

    move/from16 v3, p6

    goto/16 :goto_20e

    :cond_2fd
    move/from16 v3, v16

    move/from16 v7, v17

    if-eqz v13, :cond_327

    const-string v2, "2nd pass"

    .line 371
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 373
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    if-ge v2, v6, :cond_313

    .line 374
    invoke-virtual {v1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    const/4 v10, 0x1

    goto :goto_314

    :cond_313
    const/4 v10, 0x0

    .line 377
    :goto_314
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    if-ge v2, v9, :cond_31f

    .line 378
    invoke-virtual {v1, v9}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    const/4 v11, 0x1

    goto :goto_320

    :cond_31f
    move v11, v10

    :goto_320
    if-eqz v11, :cond_327

    const-string v2, "3rd pass"

    .line 382
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    :cond_327
    move/from16 v2, p5

    .line 386
    :cond_329
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    :cond_32c
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public updateHierarchy(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 7

    .line 54
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_3e

    .line 57
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 58
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_36

    .line 59
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_36

    .line 60
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_36

    .line 61
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_3b

    .line 62
    :cond_36
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 65
    :cond_3e
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    return-void
.end method
