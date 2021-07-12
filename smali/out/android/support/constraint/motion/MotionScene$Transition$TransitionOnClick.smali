.class Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;
.super Ljava/lang/Object;
.source "MotionScene.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/MotionScene$Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransitionOnClick"
.end annotation


# static fields
.field public static final ANIM_TOGGLE:I = 0x11

.field public static final ANIM_TO_END:I = 0x1

.field public static final ANIM_TO_START:I = 0x10

.field public static final JUMP_TO_END:I = 0x100

.field public static final JUMP_TO_START:I = 0x1000


# instance fields
.field mMode:I

.field mTargetId:I

.field private final mTransition:Landroid/support/constraint/motion/MotionScene$Transition;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/constraint/motion/MotionScene$Transition;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 617
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/16 v0, 0x11

    .line 618
    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    .line 626
    iput-object p2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 627
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroid/support/constraint/R$styleable;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 628
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_1b
    if-ge p3, p2, :cond_3d

    .line 630
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 631
    sget v1, Landroid/support/constraint/R$styleable;->OnClick_targetId:I

    if-ne v0, v1, :cond_2e

    .line 632
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    goto :goto_3a

    .line 633
    :cond_2e
    sget v1, Landroid/support/constraint/R$styleable;->OnClick_clickAction:I

    if-ne v0, v1, :cond_3a

    .line 634
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    :cond_3a
    :goto_3a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1b

    .line 637
    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public addOnClickListeners(Landroid/support/constraint/motion/MotionLayout;ILandroid/support/constraint/motion/MotionScene$Transition;)V
    .registers 10

    .line 641
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto :goto_a

    :cond_6
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_a
    if-nez p1, :cond_25

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "OnClick could not find id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 646
    :cond_25
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    .line 647
    invoke-static {p3}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p3

    if-ne v0, v1, :cond_33

    .line 649
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 653
    :cond_33
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3f

    if-ne p2, v0, :cond_3f

    const/4 v2, 0x1

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_48

    if-ne p2, v0, :cond_48

    const/4 v5, 0x1

    goto :goto_49

    :cond_48
    const/4 v5, 0x0

    :goto_49
    or-int/2addr v2, v5

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_52

    if-ne p2, v0, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    or-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_5c

    if-ne p2, p3, :cond_5c

    const/4 v2, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    or-int/2addr v0, v2

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_65

    if-ne p2, p3, :cond_65

    const/4 v3, 0x1

    :cond_65
    or-int p2, v0, v3

    if-eqz p2, :cond_6c

    .line 660
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6c
    return-void
.end method

.method isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z
    .registers 7

    .line 677
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_6

    return v1

    .line 680
    :cond_6
    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result p1

    .line 681
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1b

    .line 683
    iget p2, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq p2, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    .line 685
    :cond_1b
    iget v2, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-eq v2, v0, :cond_25

    iget p2, p2, Landroid/support/constraint/motion/MotionLayout;->mCurrentState:I

    if-ne p2, p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :cond_25
    :goto_25
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 691
    iget-object p1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object p1

    invoke-static {p1}, Landroid/support/constraint/motion/MotionScene;->access$800(Landroid/support/constraint/motion/MotionScene;)Landroid/support/constraint/motion/MotionLayout;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->isInteractionEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 695
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$100(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a

    .line 696
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2a

    .line 698
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->transitionToState(I)V

    return-void

    .line 701
    :cond_2a
    new-instance v1, Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v2, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v2}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-direct {v1, v2, v3}, Landroid/support/constraint/motion/MotionScene$Transition;-><init>(Landroid/support/constraint/motion/MotionScene;Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 702
    invoke-static {v1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$102(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 703
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$000(Landroid/support/constraint/motion/MotionScene$Transition;)I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$002(Landroid/support/constraint/motion/MotionScene$Transition;I)I

    .line 704
    invoke-virtual {p1, v1}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 705
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    return-void

    .line 708
    :cond_4a
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v0}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v0

    iget-object v0, v0, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    .line 709
    iget v1, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_61

    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v2, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    const/4 v2, 0x1

    :goto_62
    and-int/lit8 v5, v1, 0x10

    if-nez v5, :cond_6d

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v1, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 v1, 0x1

    :goto_6e
    if-eqz v2, :cond_74

    if-eqz v1, :cond_74

    const/4 v5, 0x1

    goto :goto_75

    :cond_74
    const/4 v5, 0x0

    :goto_75
    if-eqz v5, :cond_9e

    .line 713
    iget-object v5, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-static {v5}, Landroid/support/constraint/motion/MotionScene$Transition;->access$700(Landroid/support/constraint/motion/MotionScene$Transition;)Landroid/support/constraint/motion/MotionScene;

    move-result-object v5

    iget-object v5, v5, Landroid/support/constraint/motion/MotionScene;->mCurrentTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    iget-object v6, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    if-eq v5, v6, :cond_86

    .line 714
    invoke-virtual {p1, v6}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 716
    :cond_86
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getCurrentState()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getEndState()I

    move-result v6

    if-eq v5, v6, :cond_9f

    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->getProgress()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9b

    goto :goto_9f

    :cond_9b
    move v3, v2

    const/4 v1, 0x0

    goto :goto_9f

    :cond_9e
    move v3, v2

    .line 722
    :cond_9f
    :goto_9f
    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->isTransitionViable(Landroid/support/constraint/motion/MotionScene$Transition;Landroid/support/constraint/motion/MotionLayout;)Z

    move-result v0

    if-eqz v0, :cond_ea

    if-eqz v3, :cond_b5

    .line 723
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_b5

    .line 724
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 725
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToEnd()V

    goto :goto_ea

    :cond_b5
    if-eqz v1, :cond_c6

    .line 726
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c6

    .line 727
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    .line 728
    invoke-virtual {p1}, Landroid/support/constraint/motion/MotionLayout;->transitionToStart()V

    goto :goto_ea

    :cond_c6
    if-eqz v3, :cond_d9

    .line 729
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d9

    .line 730
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 731
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    goto :goto_ea

    :cond_d9
    if-eqz v1, :cond_ea

    .line 732
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mMode:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_ea

    .line 733
    iget-object v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTransition:Landroid/support/constraint/motion/MotionScene$Transition;

    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setTransition(Landroid/support/constraint/motion/MotionScene$Transition;)V

    const/4 v0, 0x0

    .line 734
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->setProgress(F)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method public removeOnClickListeners(Landroid/support/constraint/motion/MotionLayout;)V
    .registers 4

    .line 665
    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 668
    :cond_6
    invoke-virtual {p1, v0}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_25

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " (*)  could not find id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/support/constraint/motion/MotionScene$Transition$TransitionOnClick;->mTargetId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MotionScene"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const/4 v0, 0x0

    .line 673
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
