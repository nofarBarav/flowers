.class public Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;
.super Ljava/lang/Object;
.source "DependencyGraph.java"


# static fields
.field private static final USE_GROUPS:Z = true


# instance fields
.field private container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field private mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedBuildGraph:Z

.field private mNeedRedoMeasures:Z

.field private mRuns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            ">;"
        }
    .end annotation
.end field

.field private runGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    .line 45
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->runGroups:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 57
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 53
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    return-void
.end method

.method private applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;",
            "II",
            "Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ")V"
        }
    .end annotation

    .line 711
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 712
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    if-nez v0, :cond_109

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    if-eq p1, v0, :cond_109

    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-ne p1, v0, :cond_14

    goto/16 :goto_109

    :cond_14
    if-nez p6, :cond_1e

    .line 717
    new-instance p6, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    invoke-direct {p6, p1, p3}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;-><init>(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;I)V

    .line 718
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_1e
    iput-object p6, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 722
    invoke-virtual {p6, p1}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->add(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)V

    .line 723
    iget-object p3, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object p3, p3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2b
    :goto_2b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 724
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_2b

    .line 725
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_2b

    .line 728
    :cond_48
    iget-object p3, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object p3, p3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_50
    :goto_50
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 729
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_50

    .line 730
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_50

    :cond_6d
    const/4 p3, 0x1

    if-ne p2, p3, :cond_9c

    .line 733
    instance-of v0, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v0, :cond_9c

    .line 734
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7f
    :goto_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 735
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_7f

    .line 736
    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_7f

    .line 740
    :cond_9c
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-ne v1, p4, :cond_b5

    .line 742
    iput-boolean p3, p6, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->dual:Z

    :cond_b5
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 744
    invoke-direct/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_a4

    .line 746
    :cond_bf
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-ne v1, p4, :cond_d8

    .line 748
    iput-boolean p3, p6, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->dual:Z

    :cond_d8
    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 750
    invoke-direct/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_c7

    :cond_e2
    if-ne p2, p3, :cond_109

    .line 752
    instance-of p3, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz p3, :cond_109

    .line 753
    check-cast p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_109

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v3, 0x2

    move-object v0, p0

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 754
    :try_start_105
    invoke-direct/range {v0 .. v6}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_10a

    goto :goto_f2

    :cond_109
    :goto_109
    return-void

    :catchall_10a
    move-exception p1

    goto :goto_10d

    :goto_10c
    throw p1

    :goto_10d
    goto :goto_10c
.end method

.method private basicMeasureWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z
    .registers 14

    .line 383
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_38b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 384
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v2

    .line 385
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x1

    aget-object v4, v4, v9

    .line 387
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_27

    .line 388
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto :goto_6

    .line 394
    :cond_27
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    cmpg-float v5, v5, v10

    if-gez v5, :cond_36

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_36

    .line 395
    iput v6, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 397
    :cond_36
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    cmpg-float v5, v5, v10

    if-gez v5, :cond_42

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_42

    .line 398
    iput v6, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 400
    :cond_42
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x3

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7e

    .line 401
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_5b

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v5, :cond_58

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_5b

    .line 402
    :cond_58
    iput v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    goto :goto_7e

    .line 403
    :cond_5b
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_6a

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v5, :cond_67

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_6a

    .line 404
    :cond_67
    iput v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    goto :goto_7e

    .line 405
    :cond_6a
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_7e

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v5, :cond_7e

    .line 406
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v5, :cond_78

    .line 407
    iput v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 409
    :cond_78
    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v5, :cond_7e

    .line 410
    iput v8, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 415
    :cond_7e
    :goto_7e
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_94

    iget v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v5, v9, :cond_94

    .line 416
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_92

    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v5, :cond_94

    .line 417
    :cond_92
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_94
    move-object v5, v3

    .line 420
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v3, :cond_ad

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v9, :cond_ad

    .line 421
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_a9

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_ad

    .line 422
    :cond_a9
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v7, v3

    goto :goto_ae

    :cond_ad
    move-object v7, v4

    .line 426
    :goto_ae
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-object v5, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 427
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->matchConstraintsType:I

    .line 428
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iput-object v7, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimensionBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 429
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput v4, v3, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->matchConstraintsType:I

    .line 431
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_ce

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_ce

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_dc

    :cond_ce
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v3, :cond_334

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v3, :cond_334

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v3, :cond_dc

    goto/16 :goto_334

    .line 450
    :cond_dc
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v11, 0x3f000000    # 0.5f

    if-ne v5, v3, :cond_1bb

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v7, v3, :cond_ea

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v3, :cond_1bb

    .line 451
    :cond_ea
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v3, v8, :cond_12b

    .line 452
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v2, :cond_fd

    .line 453
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 455
    :cond_fd
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    int-to-float v2, v8

    .line 456
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 457
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 458
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 459
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 460
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 462
    :cond_12b
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v3, v9, :cond_144

    .line 463
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 464
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_6

    .line 466
    :cond_144
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v3, v6, :cond_188

    .line 467
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_158

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1bb

    .line 469
    :cond_158
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 470
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 471
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v8

    .line 472
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 473
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 474
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 475
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 480
    :cond_188
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_198

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v9

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_1bb

    .line 482
    :cond_198
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 483
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 484
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 485
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 490
    :cond_1bb
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v3, :cond_2a1

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v5, v3, :cond_1c7

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_2a1

    .line 491
    :cond_1c7
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v8, :cond_211

    .line 492
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v2, :cond_1da

    .line 493
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 495
    :cond_1da
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 496
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 497
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatioSide()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1e9

    div-float v2, v10, v2

    :cond_1e9
    int-to-float v3, v6

    mul-float v3, v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 502
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 503
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 504
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 505
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 507
    :cond_211
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v9, :cond_22a

    const/4 v6, 0x0

    .line 508
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 509
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_6

    .line 511
    :cond_22a
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v6, :cond_26e

    .line 512
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v9

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_23e

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v9

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_2a1

    .line 514
    :cond_23e
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 515
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    .line 516
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    add-float/2addr v2, v11

    float-to-int v8, v2

    .line 517
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 518
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 519
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 520
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 525
    :cond_26e
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v6

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v3, :cond_27e

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v3, v3, v8

    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v3, :cond_2a1

    .line 527
    :cond_27e
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 528
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 529
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 530
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 535
    :cond_2a1
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_6

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v3, :cond_6

    .line 536
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v3, v9, :cond_313

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v9, :cond_2b2

    goto :goto_313

    .line 542
    :cond_2b2
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v3, v6, :cond_6

    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-ne v3, v6, :cond_6

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v3, v2

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_2ca

    iget-object v3, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v3, v2

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_6

    :cond_2ca
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v9

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_2da

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v9

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_6

    .line 548
    :cond_2da
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 549
    iget v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 550
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v2, v2, v4

    add-float/2addr v2, v11

    float-to-int v6, v2

    .line 551
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v3, v2

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 552
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 553
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 554
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 555
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    .line 538
    :cond_313
    :goto_313
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 539
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    .line 540
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto/16 :goto_6

    .line 433
    :cond_334
    :goto_334
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    .line 434
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v3, :cond_34f

    .line 435
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v2

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    .line 436
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v6, v2

    move-object v5, v3

    goto :goto_350

    :cond_34f
    move v6, v2

    .line 438
    :goto_350
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    .line 439
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v3, :cond_36b

    .line 440
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v2, v3

    .line 441
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move v8, v2

    move-object v7, v3

    goto :goto_36c

    :cond_36b
    move v8, v2

    :goto_36c
    move-object v3, p0

    move-object v4, v1

    .line 443
    invoke-direct/range {v3 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 444
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 445
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 446
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_6

    :cond_38b
    return v2
.end method

.method private computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I
    .registers 9

    .line 64
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_1e

    .line 67
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 68
    invoke-virtual {v4, p1, p2}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->computeWrapSize(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)J

    move-result-wide v4

    .line 69
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1e
    long-to-int p1, v1

    return p1
.end method

.method private displayGraph()V
    .registers 5

    .line 703
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "digraph {\n"

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 704
    invoke-direct {p0, v2, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 706
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content:<<\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n>>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private findGroup(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/RunGroup;",
            ">;)V"
        }
    .end annotation

    .line 760
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 761
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_26

    .line 762
    move-object v4, v1

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x0

    .line 763
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_8

    .line 764
    :cond_26
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_8

    .line 765
    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 766
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_8

    .line 769
    :cond_39
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 770
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v2, :cond_5f

    .line 771
    move-object v4, v1

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v6, 0x1

    .line 772
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_41

    .line 773
    :cond_5f
    instance-of v2, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-eqz v2, :cond_41

    .line 774
    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 775
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x1

    iget-object v6, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_41

    :cond_72
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9c

    .line 779
    check-cast p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7f
    :goto_7f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/Dependency;

    .line 780
    instance-of v1, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eqz v1, :cond_7f

    .line 781
    move-object v3, v0

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p3

    .line 782
    invoke-direct/range {v2 .. v8}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->applyGroup(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;IILandroid/support/constraint/solver/widgets/analyzer/DependencyNode;Ljava/util/ArrayList;Landroid/support/constraint/solver/widgets/analyzer/RunGroup;)V

    goto :goto_7f

    :cond_9c
    return-void
.end method

.method private generateChainDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 892
    iget v0, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cluster_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_2d

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_h"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3e

    .line 897
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_v"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 899
    :goto_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subgraph "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->widgets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v2, ""

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 902
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_82

    .line 904
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_HORIZONTAL"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_93

    .line 906
    :cond_82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_VERTICAL"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 908
    :goto_93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-direct {p0, v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 911
    :cond_ac
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 932
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 933
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 935
    instance-of v2, p1, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-nez v2, :cond_28

    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_28

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_28

    return-object p2

    .line 938
    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->nodeDefinition(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 940
    invoke-direct {p0, v0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->isCenteredConnection(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;)Z

    move-result v2

    .line 941
    invoke-direct {p0, v0, v2, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 942
    invoke-direct {p0, v1, v2, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 943
    instance-of v3, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    if-eqz v3, :cond_54

    .line 944
    move-object v4, p1

    check-cast v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 945
    invoke-direct {p0, v4, v2, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 948
    :cond_54
    instance-of v2, p1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    const/4 v4, 0x0

    const-string v5, " -> "

    const-string v6, "\n"

    if-nez v2, :cond_11c

    instance-of v2, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v2, :cond_6a

    move-object v7, p1

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    iget v7, v7, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    if-nez v7, :cond_6a

    goto/16 :goto_11c

    :cond_6a
    if-nez v3, :cond_76

    if-eqz v2, :cond_1bf

    .line 967
    move-object v2, p1

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    iget v2, v2, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1bf

    .line 969
    :cond_76
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    .line 970
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_9a

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_85

    goto :goto_9a

    .line 980
    :cond_85
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v0, :cond_1bf

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1bf

    .line 981
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    goto/16 :goto_1bf

    .line 972
    :cond_9a
    :goto_9a
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_db

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_db

    .line 973
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1bf

    .line 975
    :cond_db
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1bf

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1bf

    .line 950
    :cond_11c
    :goto_11c
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    .line 951
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v2, v3, :cond_140

    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_12b

    goto :goto_140

    .line 961
    :cond_12b
    sget-object v0, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v0, :cond_1bf

    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1bf

    .line 962
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    goto/16 :goto_1bf

    .line 953
    :cond_140
    :goto_140
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_180

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_180

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1bf

    .line 956
    :cond_180
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1bf

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1bf

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 987
    :cond_1bf
    :goto_1bf
    instance-of v0, p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-eqz v0, :cond_1ca

    .line 988
    check-cast p1, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    invoke-direct {p0, p1, p2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->generateChainDisplayGraph(Landroid/support/constraint/solver/widgets/analyzer/ChainRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1ca
    return-object p2
.end method

.method private generateDisplayNode(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;ZLjava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 790
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    .line 791
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    iget v2, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    if-gtz v2, :cond_4b

    if-nez p2, :cond_4b

    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-eqz v2, :cond_c9

    .line 794
    :cond_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    iget v2, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    if-lez v2, :cond_8e

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "label=\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->margin:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_8e

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8e
    if-eqz p2, :cond_a1

    .line 802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " style=dashed "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 804
    :cond_a1
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->run:Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    instance-of v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    if-eqz v2, :cond_b8

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " style=bold,color=gray "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 807
    :cond_b8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    :cond_c9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_6

    :cond_e9
    return-object p3
.end method

.method private isCenteredConnection(Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;)Z
    .registers 7

    .line 918
    iget-object v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eq v3, p2, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 923
    :cond_19
    iget-object p2, p2, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_20
    :goto_20
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    if-eq v3, p1, :cond_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_31
    if-lez v2, :cond_36

    if-lez v0, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method private measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 7

    .line 371
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 372
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 373
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 374
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p5, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 375
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p2, p1, p3}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 376
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 377
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 378
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 379
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    return-void
.end method

.method private nodeDefinition(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;)Ljava/lang/String;
    .registers 10

    .line 819
    instance-of v0, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    .line 820
    iget-object v1, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v1

    .line 822
    iget-object v2, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_11

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    goto :goto_15

    .line 823
    :cond_11
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    .line 824
    :goto_15
    iget-object v3, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->runGroup:Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    if-nez v0, :cond_2b

    .line 827
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_HORIZONTAL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3c

    .line 829
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_VERTICAL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 831
    :goto_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [shape=none, label=<"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<TABLE BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"2\">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 833
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  <TR>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, " BGCOLOR=\"green\""

    const-string v6, "    <TD "

    if-nez v0, :cond_ab

    .line 835
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 836
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_99

    .line 837
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 839
    :cond_99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PORT=\"LEFT\" BORDER=\"1\">L</TD>"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e0

    .line 841
    :cond_ab
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 842
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v7, :cond_cf

    .line 843
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 845
    :cond_cf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " PORT=\"TOP\" BORDER=\"1\">T</TD>"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 847
    :goto_e0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    <TD BORDER=\"1\" "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 851
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v7, :cond_10f

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-nez v7, :cond_10f

    .line 852
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BGCOLOR=\"green\" "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14a

    .line 853
    :cond_10f
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v7, :cond_12d

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v7, :cond_12d

    .line 854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BGCOLOR=\"lightgray\" "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14a

    .line 855
    :cond_12d
    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v7, :cond_14a

    iget-object v7, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-boolean v7, v7, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v7, :cond_14a

    .line 856
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " BGCOLOR=\"yellow\" "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 858
    :cond_14a
    :goto_14a
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v7, :cond_15f

    .line 859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "style=\"dashed\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_15f
    if-eqz v3, :cond_186

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->groupIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_188

    :cond_186
    const-string v2, ""

    .line 865
    :goto_188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " </TD>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1dc

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean p1, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz p1, :cond_1ca

    .line 869
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    :cond_1ca
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PORT=\"RIGHT\" BORDER=\"1\">R</TD>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_24b

    .line 873
    :cond_1dc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_205

    .line 875
    move-object v0, p1

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baseline:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_205

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    :cond_205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PORT=\"BASELINE\" BORDER=\"1\">b</TD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 881
    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean p1, p1, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz p1, :cond_23a

    .line 882
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    :cond_23a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " PORT=\"BOTTOM\" BORDER=\"1\">B</TD>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 886
    :goto_24b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  </TR></TABLE>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">];\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildGraph()V
    .registers 5

    .line 629
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph(Ljava/util/ArrayList;)V

    .line 632
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 634
    sput v0, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->index:I

    .line 635
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->findGroup(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 636
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->findGroup(Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;ILjava/util/ArrayList;)V

    .line 638
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    return-void
.end method

.method public buildGraph(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;",
            ">;)V"
        }
    .end annotation

    .line 642
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 643
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 644
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 645
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 649
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v3, :cond_41

    .line 650
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;

    invoke-direct {v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 653
    :cond_41
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 654
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v3, :cond_53

    .line 656
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 657
    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    :cond_53
    if-nez v1, :cond_5a

    .line 660
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 662
    :cond_5a
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 664
    :cond_60
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :goto_65
    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 667
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v3, :cond_77

    .line 669
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)V

    .line 670
    iput-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    :cond_77
    if-nez v1, :cond_7e

    .line 673
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 675
    :cond_7e
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalChainRun:Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 677
    :cond_84
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    :goto_89
    instance-of v3, v2, Landroid/support/constraint/solver/widgets/HelperWidget;

    if-eqz v3, :cond_28

    .line 680
    new-instance v3, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;

    invoke-direct {v3, v2}, Landroid/support/constraint/solver/widgets/analyzer/HelperReferences;-><init>(Landroid/support/constraint/solver/widgets/ConstraintWidget;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_96
    if-eqz v1, :cond_9b

    .line 684
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 686
    :cond_9b
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 687
    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->clear()V

    goto :goto_9f

    .line 689
    :cond_af
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ca

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 690
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v1, v2, :cond_c6

    goto :goto_b3

    .line 693
    :cond_c6
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->apply()V

    goto :goto_b3

    :cond_ca
    return-void
.end method

.method public defineTerminalWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .registers 9

    .line 81
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v0, :cond_52

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 86
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 87
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v4, v5, v1

    .line 88
    iget-object v5, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->isTerminalWidget:[Z

    aput-boolean v4, v5, v4

    .line 89
    instance-of v3, v3, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz v3, :cond_11

    const/4 v2, 0x1

    goto :goto_11

    :cond_2c
    if-nez v2, :cond_52

    .line 94
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;

    .line 95
    sget-object v3, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v3, :cond_46

    const/4 v3, 0x1

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v5, :cond_4d

    const/4 v5, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v5, 0x0

    :goto_4e
    invoke-virtual {v2, v3, v5}, Landroid/support/constraint/solver/widgets/analyzer/RunGroup;->defineTerminalWidgets(ZZ)V

    goto :goto_34

    :cond_52
    return-void
.end method

.method public directMeasure(Z)Z
    .registers 10

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 111
    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v2, 0x0

    if-nez v1, :cond_b

    iget-boolean v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    if-eqz v1, :cond_40

    .line 112
    :cond_b
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 113
    iput-boolean v2, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 114
    iget-object v4, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 115
    iget-object v3, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    goto :goto_13

    .line 117
    :cond_2c
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iput-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measured:Z

    .line 118
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 119
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 120
    iput-boolean v2, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    .line 123
    :cond_40
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z

    move-result v1

    if-eqz v1, :cond_49

    return v2

    .line 128
    :cond_49
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 129
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 131
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 132
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 134
    iget-boolean v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    if-eqz v4, :cond_66

    .line 135
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 138
    :cond_66
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getX()I

    move-result v4

    .line 139
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getY()I

    move-result v5

    .line 141
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, v4}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 142
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, v5}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 146
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 149
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v6, :cond_8f

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_f4

    :cond_8f
    if-eqz p1, :cond_aa

    .line 151
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_97
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_aa

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 152
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v7

    if-nez v7, :cond_97

    const/4 p1, 0x0

    :cond_aa
    if-eqz p1, :cond_cf

    .line 159
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v6, :cond_cf

    .line 160
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 161
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, v6, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 162
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_cf
    if-eqz p1, :cond_f4

    .line 164
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, p1, :cond_f4

    .line 165
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 166
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 167
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 176
    :cond_f4
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v6, :cond_10b

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v2

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v6, :cond_109

    goto :goto_10b

    :cond_109
    const/4 p1, 0x0

    goto :goto_15a

    .line 180
    :cond_10b
    :goto_10b
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result p1

    add-int/2addr p1, v4

    .line 181
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v6, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 182
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v4

    invoke-virtual {v6, p1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 183
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 184
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v4, :cond_13c

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v4, :cond_156

    .line 186
    :cond_13c
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p1

    add-int/2addr p1, v5

    .line 187
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 188
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 190
    :cond_156
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    const/4 p1, 0x1

    .line 197
    :goto_15a
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_160
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 198
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_177

    iget-boolean v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v6, :cond_177

    goto :goto_160

    .line 201
    :cond_177
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    goto :goto_160

    .line 205
    :cond_17b
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_181
    :goto_181
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    if-nez p1, :cond_196

    .line 206
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_196

    goto :goto_181

    .line 209
    :cond_196
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_19e

    :goto_19c
    const/4 v0, 0x0

    goto :goto_1b8

    .line 213
    :cond_19e
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_1a9

    instance-of v6, v5, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;

    if-nez v6, :cond_1a9

    goto :goto_19c

    .line 217
    :cond_1a9
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v6, :cond_181

    instance-of v6, v5, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v6, :cond_181

    instance-of v5, v5, Landroid/support/constraint/solver/widgets/analyzer/GuidelineReference;

    if-nez v5, :cond_181

    goto :goto_19c

    .line 223
    :cond_1b8
    :goto_1b8
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 224
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public directMeasureSetup(Z)Z
    .registers 5

    .line 230
    iget-boolean p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6b

    .line 231
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 232
    iput-boolean v0, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 233
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 234
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-boolean v0, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 235
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 236
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 237
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iput-boolean v0, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->resolved:Z

    .line 238
    iget-object v1, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    goto :goto_d

    .line 240
    :cond_3a
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->measured:Z

    .line 241
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 242
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->resolved:Z

    .line 243
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->reset()V

    .line 244
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 245
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iput-boolean v0, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->resolved:Z

    .line 246
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->reset()V

    .line 247
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->buildGraph()V

    .line 250
    :cond_6b
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mContainer:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->basicMeasureWidgets(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)Z

    move-result p1

    if-eqz p1, :cond_74

    return v0

    .line 255
    :cond_74
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 256
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 257
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 258
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public directMeasureWithOrientation(ZI)Z
    .registers 12

    const/4 v0, 0x1

    and-int/2addr p1, v0

    .line 265
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    .line 266
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    .line 268
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getX()I

    move-result v4

    .line 269
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getY()I

    move-result v5

    if-eqz p1, :cond_8f

    .line 272
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v6, :cond_25

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v6, :cond_8f

    .line 273
    :cond_25
    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_42

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 274
    iget v8, v7, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-ne v8, p2, :cond_2b

    .line 275
    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->supportsWrapComputation()Z

    move-result v7

    if-nez v7, :cond_2b

    const/4 p1, 0x0

    :cond_42
    if-nez p2, :cond_6a

    if-eqz p1, :cond_8f

    .line 282
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, p1, :cond_8f

    .line 283
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 284
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, v2}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 285
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_8f

    :cond_6a
    if-eqz p1, :cond_8f

    .line 288
    sget-object p1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, p1, :cond_8f

    .line 289
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 290
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->computeWrap(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 291
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-object v6, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :cond_8f
    :goto_8f
    if-nez p2, :cond_c0

    .line 302
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v5, :cond_a5

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v2

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_d5

    .line 304
    :cond_a5
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result p1

    add-int/2addr p1, v4

    .line 305
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v5, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 306
    iget-object v5, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v4

    invoke-virtual {v5, p1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto :goto_f1

    .line 310
    :cond_c0
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq p1, v4, :cond_d7

    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object p1, p1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, v0

    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v4, :cond_d5

    goto :goto_d7

    :cond_d5
    const/4 p1, 0x0

    goto :goto_f2

    .line 312
    :cond_d7
    :goto_d7
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result p1

    add-int/2addr p1, v5

    .line 313
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolve(I)V

    .line 314
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    sub-int/2addr p1, v5

    invoke-virtual {v4, p1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    :goto_f1
    const/4 p1, 0x1

    .line 318
    :goto_f2
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measureWidgets()V

    .line 321
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_fb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 322
    iget v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, p2, :cond_10c

    goto :goto_fb

    .line 325
    :cond_10c
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_117

    iget-boolean v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->resolved:Z

    if-nez v6, :cond_117

    goto :goto_fb

    .line 328
    :cond_117
    invoke-virtual {v5}, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->applyToWidget()V

    goto :goto_fb

    .line 332
    :cond_11b
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mRuns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_121
    :goto_121
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_155

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;

    .line 333
    iget v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->orientation:I

    if-eq v6, p2, :cond_132

    goto :goto_121

    :cond_132
    if-nez p1, :cond_13b

    .line 336
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    iget-object v7, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    if-ne v6, v7, :cond_13b

    goto :goto_121

    .line 339
    :cond_13b
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->start:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_143

    :goto_141
    const/4 v0, 0x0

    goto :goto_155

    .line 343
    :cond_143
    iget-object v6, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->end:Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;

    iget-boolean v6, v6, Landroid/support/constraint/solver/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v6, :cond_14a

    goto :goto_141

    .line 347
    :cond_14a
    instance-of v6, v5, Landroid/support/constraint/solver/widgets/analyzer/ChainRun;

    if-nez v6, :cond_121

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/WidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-nez v5, :cond_121

    goto :goto_141

    .line 353
    :cond_155
    :goto_155
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 354
    iget-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1, v3}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    return v0
.end method

.method public invalidateGraph()V
    .registers 2

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedBuildGraph:Z

    return-void
.end method

.method public invalidateMeasures()V
    .registers 2

    const/4 v0, 0x1

    .line 622
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mNeedRedoMeasures:Z

    return-void
.end method

.method public measureWidgets()V
    .registers 12

    .line 564
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->container:Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    iget-object v0, v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_eb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 565
    iget-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v2, :cond_19

    goto :goto_8

    .line 568
    :cond_19
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 569
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v9, 0x1

    aget-object v10, v2, v9

    .line 570
    iget v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 571
    iget v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    .line 573
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v8, v5, :cond_34

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v5, :cond_32

    if-ne v2, v9, :cond_32

    goto :goto_34

    :cond_32
    const/4 v2, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v2, 0x1

    .line 576
    :goto_35
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v5, :cond_3f

    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v5, :cond_40

    if-ne v4, v9, :cond_40

    :cond_3f
    const/4 v3, 0x1

    .line 579
    :cond_40
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    .line 580
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v5, v5, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v5, v5, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_69

    if-eqz v5, :cond_69

    .line 583
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 585
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto/16 :goto_d4

    :cond_69
    if-eqz v4, :cond_9f

    if-eqz v3, :cond_9f

    .line 587
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 589
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v2, :cond_91

    .line 590
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_d4

    .line 592
    :cond_91
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 593
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    goto :goto_d4

    :cond_9f
    if-eqz v5, :cond_d4

    if-eqz v2, :cond_d4

    .line 596
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v5, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    iget v7, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->value:I

    move-object v2, p0

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    .line 598
    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v2, :cond_c7

    .line 599
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->wrapValue:I

    goto :goto_d4

    .line 601
    :cond_c7
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->horizontalRun:Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    .line 602
    iput-boolean v9, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    .line 605
    :cond_d4
    :goto_d4
    iget-boolean v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->measured:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    if-eqz v2, :cond_8

    .line 606
    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ConstraintWidget;->verticalRun:Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/analyzer/VerticalWidgetRun;->baselineDimension:Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/widgets/analyzer/DimensionDependency;->resolve(I)V

    goto/16 :goto_8

    :cond_eb
    return-void
.end method

.method public setMeasurer(Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .registers 2

    .line 60
    iput-object p1, p0, Landroid/support/constraint/solver/widgets/analyzer/DependencyGraph;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method
