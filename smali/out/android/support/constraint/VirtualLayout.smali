.class public abstract Landroid/support/constraint/VirtualLayout;
.super Landroid/support/constraint/ConstraintHelper;
.source "VirtualLayout.java"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .registers 7

    .line 48
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_2b

    .line 50
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2b

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 54
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_22

    .line 55
    iput-boolean v4, p0, Landroid/support/constraint/VirtualLayout;->mApplyVisibilityOnAttach:Z

    goto :goto_28

    .line 56
    :cond_22
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v2, v3, :cond_28

    .line 57
    iput-boolean v4, p0, Landroid/support/constraint/VirtualLayout;->mApplyElevationOnAttach:Z

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2b
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 9

    .line 72
    invoke-super {p0}, Landroid/support/constraint/ConstraintHelper;->onAttachedToWindow()V

    .line 73
    iget-boolean v0, p0, Landroid/support/constraint/VirtualLayout;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/support/constraint/VirtualLayout;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_55

    .line 74
    :cond_b
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 75
    instance-of v1, v0, Landroid/support/constraint/ConstraintLayout;

    if-eqz v1, :cond_55

    .line 76
    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    .line 77
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getVisibility()I

    move-result v1

    .line 79
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt v2, v3, :cond_27

    .line 80
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->getElevation()F

    move-result v2

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    const/4 v5, 0x0

    .line 82
    :goto_29
    iget v6, p0, Landroid/support/constraint/VirtualLayout;->mCount:I

    if-ge v5, v6, :cond_55

    .line 83
    iget-object v6, p0, Landroid/support/constraint/VirtualLayout;->mIds:[I

    aget v6, v6, v5

    .line 84
    invoke-virtual {v0, v6}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_52

    .line 86
    iget-boolean v7, p0, Landroid/support/constraint/VirtualLayout;->mApplyVisibilityOnAttach:Z

    if-eqz v7, :cond_3e

    .line 87
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_3e
    iget-boolean v7, p0, Landroid/support/constraint/VirtualLayout;->mApplyElevationOnAttach:Z

    if-eqz v7, :cond_52

    cmpl-float v7, v2, v4

    if-lez v7, :cond_52

    .line 90
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v3, :cond_52

    .line 91
    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v7

    add-float/2addr v7, v2

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_55
    return-void
.end method

.method public onMeasure(Landroid/support/constraint/solver/widgets/VirtualLayout;II)V
    .registers 4

    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 114
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setElevation(F)V

    .line 115
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->applyLayoutFeatures()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 105
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 106
    invoke-virtual {p0}, Landroid/support/constraint/VirtualLayout;->applyLayoutFeatures()V

    return-void
.end method
