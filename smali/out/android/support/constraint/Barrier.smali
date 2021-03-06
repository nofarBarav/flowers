.class public Landroid/support/constraint/Barrier;
.super Landroid/support/constraint/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 119
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 124
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 129
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    return-void
.end method

.method private updateType(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V
    .registers 9

    .line 151
    iput p2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 152
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/16 v4, 0x11

    if-ge p2, v4, :cond_18

    .line 155
    iget p2, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p2, v3, :cond_13

    .line 156
    iput v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_31

    :cond_13
    if-ne p2, v2, :cond_31

    .line 158
    iput v0, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_31

    :cond_18
    if-eqz p3, :cond_26

    .line 163
    iget p2, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p2, v3, :cond_21

    .line 164
    iput v0, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_31

    :cond_21
    if-ne p2, v2, :cond_31

    .line 166
    iput v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_31

    .line 169
    :cond_26
    iget p2, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    if-ne p2, v3, :cond_2d

    .line 170
    iput v1, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    goto :goto_31

    :cond_2d
    if-ne p2, v2, :cond_31

    .line 172
    iput v0, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    .line 176
    :cond_31
    :goto_31
    instance-of p2, p1, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz p2, :cond_3c

    .line 177
    check-cast p1, Landroid/support/constraint/solver/widgets/Barrier;

    .line 178
    iget p2, p0, Landroid/support/constraint/Barrier;->mResolvedType:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/solver/widgets/Barrier;->setBarrierType(I)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getMargin()I
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroid/support/constraint/solver/widgets/Barrier;->getMargin()I

    move-result v0

    return v0
.end method

.method public getType()I
    .registers 2

    .line 138
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 8

    .line 193
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 194
    new-instance v0, Landroid/support/constraint/solver/widgets/Barrier;

    invoke-direct {v0}, Landroid/support/constraint/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz p1, :cond_4d

    .line 196
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_4d

    .line 199
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 200
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_2e

    .line 201
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/Barrier;->setType(I)V

    goto :goto_4a

    .line 202
    :cond_2e
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_3d

    .line 203
    iget-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_4a

    .line 204
    :cond_3d
    sget v4, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v3, v4, :cond_4a

    .line 205
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 206
    iget-object v4, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v4, v3}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 210
    :cond_4d
    iget-object p1, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    iput-object p1, p0, Landroid/support/constraint/Barrier;->mHelperWidget:Landroid/support/constraint/solver/widgets/Helper;

    .line 211
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->validateParams()V

    return-void
.end method

.method public loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            "Landroid/support/constraint/solver/widgets/HelperWidget;",
            "Landroid/support/constraint/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/constraint/ConstraintHelper;->loadParameters(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/solver/widgets/HelperWidget;Landroid/support/constraint/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 254
    instance-of p3, p2, Landroid/support/constraint/solver/widgets/Barrier;

    if-eqz p3, :cond_29

    .line 255
    move-object p3, p2

    check-cast p3, Landroid/support/constraint/solver/widgets/Barrier;

    .line 256
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/HelperWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p2

    check-cast p2, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;

    .line 257
    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result p2

    .line 258
    iget-object p4, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget p4, p4, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-direct {p0, p3, p4, p2}, Landroid/support/constraint/Barrier;->updateType(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V

    .line 259
    iget-object p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget-boolean p2, p2, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {p3, p2}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 260
    iget-object p1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->layout:Landroid/support/constraint/ConstraintSet$Layout;

    iget p1, p1, Landroid/support/constraint/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {p3, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    :cond_29
    return-void
.end method

.method public resolveRtl(Landroid/support/constraint/solver/widgets/ConstraintWidget;Z)V
    .registers 4

    .line 184
    iget v0, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    invoke-direct {p0, p1, v0, p2}, Landroid/support/constraint/Barrier;->updateType(Landroid/support/constraint/solver/widgets/ConstraintWidget;IZ)V

    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    return-void
.end method

.method public setDpMargin(I)V
    .registers 3

    .line 228
    invoke-virtual {p0}, Landroid/support/constraint/Barrier;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 230
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public setMargin(I)V
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/support/constraint/Barrier;->mBarrier:Landroid/support/constraint/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroid/support/constraint/solver/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 147
    iput p1, p0, Landroid/support/constraint/Barrier;->mIndicatedType:I

    return-void
.end method
