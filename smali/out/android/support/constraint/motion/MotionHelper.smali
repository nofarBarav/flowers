.class public Landroid/support/constraint/motion/MotionHelper;
.super Landroid/support/constraint/ConstraintHelper;
.source "MotionHelper.java"

# interfaces
.implements Landroid/support/constraint/motion/Animatable;
.implements Landroid/support/constraint/motion/MotionLayout$TransitionListener;


# instance fields
.field private mProgress:F

.field private mUseOnHide:Z

.field private mUseOnShow:Z

.field protected views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    .line 28
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/MotionHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    .line 18
    iput-boolean p1, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    .line 33
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/MotionHelper;->init(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    .line 75
    iget v0, p0, Landroid/support/constraint/motion/MotionHelper;->mProgress:F

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 6

    .line 40
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_36

    .line 42
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_36

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 46
    sget v3, Landroid/support/constraint/R$styleable;->MotionHelper_onShow:I

    if-ne v2, v3, :cond_27

    .line 47
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    goto :goto_33

    .line 48
    :cond_27
    sget v3, Landroid/support/constraint/R$styleable;->MotionHelper_onHide:I

    if-ne v2, v3, :cond_33

    .line 49
    iget-boolean v3, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    :cond_33
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_36
    return-void
.end method

.method public isUseOnHide()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnHide:Z

    return v0
.end method

.method public isUsedOnShow()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Landroid/support/constraint/motion/MotionHelper;->mUseOnShow:Z

    return v0
.end method

.method public onTransitionChange(Landroid/support/constraint/motion/MotionLayout;IIF)V
    .registers 5

    return-void
.end method

.method public onTransitionCompleted(Landroid/support/constraint/motion/MotionLayout;I)V
    .registers 3

    return-void
.end method

.method public onTransitionStarted(Landroid/support/constraint/motion/MotionLayout;II)V
    .registers 4

    return-void
.end method

.method public onTransitionTrigger(Landroid/support/constraint/motion/MotionLayout;IZF)V
    .registers 5

    return-void
.end method

.method public setProgress(F)V
    .registers 7

    .line 80
    iput p1, p0, Landroid/support/constraint/motion/MotionHelper;->mProgress:F

    .line 81
    iget v0, p0, Landroid/support/constraint/motion/MotionHelper;->mCount:I

    const/4 v1, 0x0

    if-lez v0, :cond_21

    .line 82
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/MotionHelper;->getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionHelper;->views:[Landroid/view/View;

    .line 84
    :goto_13
    iget v0, p0, Landroid/support/constraint/motion/MotionHelper;->mCount:I

    if-ge v1, v0, :cond_3c

    .line 85
    iget-object v0, p0, Landroid/support/constraint/motion/MotionHelper;->views:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 86
    invoke-virtual {p0, v0, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 89
    :cond_21
    invoke-virtual {p0}, Landroid/support/constraint/motion/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_2b
    if-ge v1, v2, :cond_3c

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 94
    instance-of v4, v3, Landroid/support/constraint/motion/MotionHelper;

    if-eqz v4, :cond_36

    goto :goto_39

    .line 97
    :cond_36
    invoke-virtual {p0, v3, p1}, Landroid/support/constraint/motion/MotionHelper;->setProgress(Landroid/view/View;F)V

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3c
    return-void
.end method

.method public setProgress(Landroid/view/View;F)V
    .registers 3

    return-void
.end method
