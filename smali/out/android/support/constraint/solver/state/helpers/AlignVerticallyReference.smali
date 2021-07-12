.class public Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;
.super Landroid/support/constraint/solver/state/HelperReference;
.source "AlignVerticallyReference.java"


# instance fields
.field private mBias:F

.field private mBottomToBottom:Ljava/lang/Object;

.field private mBottomToTop:Ljava/lang/Object;

.field private mTopToBottom:Ljava/lang/Object;

.field private mTopToTop:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/constraint/solver/state/State;)V
    .registers 3

    .line 33
    sget-object v0, Landroid/support/constraint/solver/state/State$Helper;->ALIGN_VERTICALLY:Landroid/support/constraint/solver/state/State$Helper;

    invoke-direct {p0, p1, v0}, Landroid/support/constraint/solver/state/HelperReference;-><init>(Landroid/support/constraint/solver/state/State;Landroid/support/constraint/solver/state/State$Helper;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 25
    iput p1, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBias:F

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 5

    .line 37
    iget-object v0, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mReferences:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget-object v2, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mState:Landroid/support/constraint/solver/state/State;

    invoke-virtual {v2, v1}, Landroid/support/constraint/solver/state/State;->constraints(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/support/constraint/solver/state/ConstraintReference;->clearVertical()Landroid/support/constraint/solver/state/ConstraintReference;

    .line 40
    iget-object v2, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    if-eqz v2, :cond_21

    .line 41
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    goto :goto_2e

    .line 42
    :cond_21
    iget-object v2, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_29

    .line 43
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    goto :goto_2e

    .line 45
    :cond_29
    sget-object v2, Landroid/support/constraint/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    .line 47
    :goto_2e
    iget-object v2, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    if-eqz v2, :cond_36

    .line 48
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    goto :goto_43

    .line 49
    :cond_36
    iget-object v2, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    if-eqz v2, :cond_3e

    .line 50
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    goto :goto_43

    .line 52
    :cond_3e
    sget-object v2, Landroid/support/constraint/solver/state/State;->PARENT:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroid/support/constraint/solver/state/ConstraintReference;

    .line 54
    :goto_43
    iget v2, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBias:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_6

    .line 55
    invoke-virtual {v1, v2}, Landroid/support/constraint/solver/state/ConstraintReference;->verticalBias(F)Landroid/support/constraint/solver/state/ConstraintReference;

    goto :goto_6

    :cond_4f
    return-void
.end method

.method public bias(F)V
    .registers 2

    .line 65
    iput p1, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBias:F

    return-void
.end method

.method public bottomToBottom(Ljava/lang/Object;)V
    .registers 2

    .line 63
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    return-void
.end method

.method public bottomToTop(Ljava/lang/Object;)V
    .registers 2

    .line 62
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    return-void
.end method

.method public topToBottom(Ljava/lang/Object;)V
    .registers 2

    .line 61
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    return-void
.end method

.method public topToTop(Ljava/lang/Object;)V
    .registers 2

    .line 60
    iput-object p1, p0, Landroid/support/constraint/solver/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    return-void
.end method
