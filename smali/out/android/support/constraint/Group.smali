.class public Landroid/support/constraint/Group;
.super Landroid/support/constraint/ConstraintHelper;
.source "Group.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/util/AttributeSet;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Landroid/support/constraint/Group;->mUseViewMeasure:Z

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 1

    .line 62
    invoke-super {p0}, Landroid/support/constraint/ConstraintHelper;->onAttachedToWindow()V

    .line 63
    invoke-virtual {p0}, Landroid/support/constraint/Group;->applyLayoutFeatures()V

    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setElevation(F)V

    .line 75
    invoke-virtual {p0}, Landroid/support/constraint/Group;->applyLayoutFeatures()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Landroid/support/constraint/Group;->applyLayoutFeatures()V

    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 4

    .line 84
    invoke-virtual {p0}, Landroid/support/constraint/Group;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 85
    iget-object v0, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 86
    iget-object p1, p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->widget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    invoke-virtual {p1, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    return-void
.end method
