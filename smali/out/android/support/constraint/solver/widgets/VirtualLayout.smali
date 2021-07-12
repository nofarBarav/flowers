.class public Landroid/support/constraint/solver/widgets/VirtualLayout;
.super Landroid/support/constraint/solver/widgets/HelperWidget;
.source "VirtualLayout.java"


# instance fields
.field protected mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mNeedsCallFromSolver:Z

.field private mPaddingBottom:I

.field private mPaddingEnd:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingStart:I

.field private mPaddingTop:I

.field private mResolvedPaddingLeft:I

.field private mResolvedPaddingRight:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/support/constraint/solver/widgets/HelperWidget;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    .line 29
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    .line 30
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingLeft:I

    .line 31
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingRight:I

    .line 32
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    .line 33
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    .line 34
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 35
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    .line 37
    iput-boolean v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    .line 38
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 39
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    .line 41
    new-instance v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-void
.end method


# virtual methods
.method public applyRtl(Z)V
    .registers 4

    .line 72
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    if-gtz v0, :cond_8

    iget v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    if-lez v1, :cond_17

    :cond_8
    if-eqz p1, :cond_11

    .line 74
    iget p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 75
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    goto :goto_17

    .line 77
    :cond_11
    iput v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 78
    iget p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    :cond_17
    :goto_17
    return-void
.end method

.method public captureWidgets()V
    .registers 4

    const/4 v0, 0x0

    .line 130
    :goto_1
    iget v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgetsCount:I

    if-ge v0, v1, :cond_12

    .line 131
    iget-object v1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setInVirtualLayout(Z)V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    return-void
.end method

.method public getMeasuredHeight()I
    .registers 2

    .line 143
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    return v0
.end method

.method public getPaddingBottom()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .registers 2

    .line 100
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    return v0
.end method

.method public measure(IIII)V
    .registers 5

    return-void
.end method

.method protected measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .registers 7

    .line 207
    :goto_0
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 208
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 209
    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    goto :goto_0

    .line 211
    :cond_17
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p2, v0, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 212
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object p4, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 213
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p3, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 214
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput p5, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 215
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasurer:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    iget-object p3, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p2, p1, p3}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 216
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 217
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 218
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 219
    iget-object p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget p2, p2, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    return-void
.end method

.method protected measureChildren()Z
    .registers 9

    .line 153
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_d

    .line 154
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mParent:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    check-cast v0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    :cond_12
    const/4 v2, 0x0

    .line 160
    :goto_13
    iget v3, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgetsCount:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_82

    .line 161
    iget-object v3, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mWidgets:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    if-nez v3, :cond_1f

    goto :goto_7f

    .line 166
    :cond_1f
    instance-of v5, v3, Landroid/support/constraint/solver/widgets/Guideline;

    if-eqz v5, :cond_24

    goto :goto_7f

    .line 170
    :cond_24
    invoke-virtual {v3, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 171
    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 173
    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_3d

    iget v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v7, v4, :cond_3d

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v7, :cond_3d

    iget v7, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v7, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    if-eqz v4, :cond_41

    goto :goto_7f

    .line 184
    :cond_41
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v4, :cond_47

    .line 185
    sget-object v5, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 187
    :cond_47
    sget-object v4, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v4, :cond_4d

    .line 188
    sget-object v6, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 190
    :cond_4d
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v5, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 191
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-object v6, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 192
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 193
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 194
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {v0, v3, v4}, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 195
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 196
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 197
    iget-object v4, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasure:Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v4, v4, Landroid/support/constraint/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_82
    return v4
.end method

.method public needSolverPass()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return v0
.end method

.method protected needsCallbackFromSolver(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mNeedsCallFromSolver:Z

    return-void
.end method

.method public setMeasure(II)V
    .registers 3

    .line 147
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredWidth:I

    .line 148
    iput p2, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mMeasuredHeight:I

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    .line 48
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingLeft:I

    .line 49
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    .line 50
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingRight:I

    .line 51
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    .line 52
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    .line 53
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    return-void
.end method

.method public setPaddingBottom(I)V
    .registers 2

    .line 93
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingBottom:I

    return-void
.end method

.method public setPaddingEnd(I)V
    .registers 2

    .line 63
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingEnd:I

    return-void
.end method

.method public setPaddingLeft(I)V
    .registers 2

    .line 67
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingLeft:I

    .line 68
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .registers 2

    .line 88
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingRight:I

    .line 89
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return-void
.end method

.method public setPaddingStart(I)V
    .registers 2

    .line 57
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingStart:I

    .line 58
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingLeft:I

    .line 59
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mResolvedPaddingRight:I

    return-void
.end method

.method public setPaddingTop(I)V
    .registers 2

    .line 84
    iput p1, p0, Landroid/support/constraint/solver/widgets/VirtualLayout;->mPaddingTop:I

    return-void
.end method

.method public updateConstraints(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;)V
    .registers 2

    .line 126
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/VirtualLayout;->captureWidgets()V

    return-void
.end method
