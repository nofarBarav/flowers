.class public Landroid/support/constraint/helper/Layer;
.super Landroid/support/constraint/ConstraintHelper;
.source "Layer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Layer"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z

.field protected mComputedCenterX:F

.field protected mComputedCenterY:F

.field protected mComputedMaxX:F

.field protected mComputedMaxY:F

.field protected mComputedMinX:F

.field protected mComputedMinY:F

.field mContainer:Landroid/support/constraint/ConstraintLayout;

.field private mGroupRotateAngle:F

.field mNeedBounds:Z

.field private mRotationCenterX:F

.field private mRotationCenterY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mShiftX:F

.field private mShiftY:F

.field mViews:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 21
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 22
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 23
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 26
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 27
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 28
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 30
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 31
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 32
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 33
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 37
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 21
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 22
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 23
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 25
    iput p2, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 26
    iput p2, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 27
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 28
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 30
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 31
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 32
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 33
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 37
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 21
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 22
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 23
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 25
    iput p2, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 26
    iput p2, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 27
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 28
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 30
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    .line 31
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    .line 32
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    .line 33
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 37
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    return-void
.end method

.method private reCacheViews()V
    .registers 5

    .line 240
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    if-nez v0, :cond_5

    return-void

    .line 243
    :cond_5
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-nez v0, :cond_a

    return-void

    .line 247
    :cond_a
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    if-eqz v0, :cond_13

    array-length v0, v0

    iget v1, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-eq v0, v1, :cond_19

    .line 248
    :cond_13
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    :cond_19
    const/4 v0, 0x0

    .line 250
    :goto_1a
    iget v1, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v0, v1, :cond_2f

    .line 251
    iget-object v1, p0, Landroid/support/constraint/helper/Layer;->mIds:[I

    aget v1, v1, v0

    .line 252
    iget-object v2, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    iget-object v3, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2f
    return-void
.end method

.method private transform()V
    .registers 11

    .line 306
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    if-nez v0, :cond_5

    return-void

    .line 309
    :cond_5
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    if-nez v0, :cond_c

    .line 310
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->reCacheViews()V

    .line 312
    :cond_c
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->calcCenters()V

    .line 314
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 315
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 317
    iget v1, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    mul-float v3, v1, v0

    .line 318
    iget v4, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    neg-float v5, v4

    mul-float v5, v5, v2

    mul-float v1, v1, v2

    mul-float v4, v4, v0

    const/4 v0, 0x0

    .line 322
    :goto_2e
    iget v2, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v0, v2, :cond_7e

    .line 323
    iget-object v2, p0, Landroid/support/constraint/helper/Layer;->mViews:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 324
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 325
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    int-to-float v6, v6

    .line 326
    iget v8, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    sub-float/2addr v6, v8

    int-to-float v7, v7

    .line 327
    iget v8, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    sub-float/2addr v7, v8

    mul-float v8, v3, v6

    mul-float v9, v5, v7

    add-float/2addr v8, v9

    sub-float/2addr v8, v6

    .line 328
    iget v9, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    add-float/2addr v8, v9

    mul-float v6, v6, v1

    mul-float v9, v4, v7

    add-float/2addr v6, v9

    sub-float/2addr v6, v7

    .line 329
    iget v7, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    add-float/2addr v6, v7

    .line 331
    invoke-virtual {v2, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 332
    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    iget v6, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 334
    iget v6, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 335
    iget v6, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-virtual {v2, v6}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_7e
    return-void
.end method


# virtual methods
.method protected calcCenters()V
    .registers 9

    .line 257
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    if-nez v0, :cond_5

    return-void

    .line 260
    :cond_5
    iget-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mNeedBounds:Z

    if-nez v0, :cond_1a

    .line 261
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 265
    :cond_1a
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_35

    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_35

    .line 299
    :cond_2b
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 300
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    goto/16 :goto_af

    .line 266
    :cond_35
    :goto_35
    iget-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/support/constraint/helper/Layer;->getViews(Landroid/support/constraint/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 268
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 269
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 270
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    .line 271
    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 273
    :goto_54
    iget v6, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v1, v6, :cond_7d

    .line 274
    aget-object v6, v0, v1

    .line 275
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 276
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 277
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 278
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    :cond_7d
    int-to-float v0, v4

    .line 281
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    int-to-float v0, v5

    .line 282
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    int-to-float v0, v2

    .line 283
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    int-to-float v0, v3

    .line 284
    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    .line 286
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_98

    add-int/2addr v2, v4

    .line 287
    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    goto :goto_9c

    .line 289
    :cond_98
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 291
    :goto_9c
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_ab

    add-int/2addr v3, v5

    .line 292
    div-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    goto :goto_af

    .line 295
    :cond_ab
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    iput v0, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    :goto_af
    return-void
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .registers 7

    .line 59
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mUseViewMeasure:Z

    if-eqz p1, :cond_2d

    .line 62
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    :goto_16
    if-ge v0, v1, :cond_2d

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 66
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_24

    .line 67
    iput-boolean v4, p0, Landroid/support/constraint/helper/Layer;->mApplyVisibilityOnAttach:Z

    goto :goto_2a

    .line 68
    :cond_24
    sget v3, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    if-ne v2, v3, :cond_2a

    .line 69
    iput-boolean v4, p0, Landroid/support/constraint/helper/Layer;->mApplyElevationOnAttach:Z

    :cond_2a
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2d
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 8

    .line 77
    invoke-super {p0}, Landroid/support/constraint/ConstraintHelper;->onAttachedToWindow()V

    .line 78
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    .line 79
    iget-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mApplyVisibilityOnAttach:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Landroid/support/constraint/helper/Layer;->mApplyElevationOnAttach:Z

    if-eqz v0, :cond_53

    .line 80
    :cond_13
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getVisibility()I

    move-result v0

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_23

    .line 83
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getElevation()F

    move-result v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    const/4 v4, 0x0

    .line 85
    :goto_25
    iget v5, p0, Landroid/support/constraint/helper/Layer;->mCount:I

    if-ge v4, v5, :cond_53

    .line 86
    iget-object v5, p0, Landroid/support/constraint/helper/Layer;->mIds:[I

    aget v5, v5, v4

    .line 87
    iget-object v6, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v6, v5}, Landroid/support/constraint/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 89
    iget-boolean v6, p0, Landroid/support/constraint/helper/Layer;->mApplyVisibilityOnAttach:Z

    if-eqz v6, :cond_3c

    .line 90
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_3c
    iget-boolean v6, p0, Landroid/support/constraint/helper/Layer;->mApplyElevationOnAttach:Z

    if-eqz v6, :cond_50

    cmpl-float v6, v1, v3

    if-lez v6, :cond_50

    .line 93
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_50

    .line 94
    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationZ(F)V

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_53
    return-void
.end method

.method public setElevation(F)V
    .registers 2

    .line 208
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setElevation(F)V

    .line 209
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->applyLayoutFeatures()V

    return-void
.end method

.method public setPivotX(F)V
    .registers 2

    .line 159
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterX:F

    .line 160
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setPivotY(F)V
    .registers 2

    .line 170
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mRotationCenterY:F

    .line 171
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setRotation(F)V
    .registers 2

    .line 127
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    .line 128
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setScaleX(F)V
    .registers 2

    .line 137
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mScaleX:F

    .line 138
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setScaleY(F)V
    .registers 2

    .line 148
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mScaleY:F

    .line 149
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setTranslationX(F)V
    .registers 2

    .line 180
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftX:F

    .line 181
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setTranslationY(F)V
    .registers 2

    .line 190
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mShiftY:F

    .line 191
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 199
    invoke-super {p0, p1}, Landroid/support/constraint/ConstraintHelper;->setVisibility(I)V

    .line 200
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->applyLayoutFeatures()V

    return-void
.end method

.method public updatePostLayout(Landroid/support/constraint/ConstraintLayout;)V
    .registers 6

    .line 218
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->reCacheViews()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 220
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterX:F

    .line 221
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mComputedCenterY:F

    .line 222
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 223
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->getConstraintWidget()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object p1

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 225
    invoke-virtual {p1, v0}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 226
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->calcCenters()V

    .line 227
    iget p1, p0, Landroid/support/constraint/helper/Layer;->mComputedMinX:F

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 228
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mComputedMinY:F

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 229
    iget v1, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxX:F

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 230
    iget v2, p0, Landroid/support/constraint/helper/Layer;->mComputedMaxY:F

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 231
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/support/constraint/helper/Layer;->layout(IIII)V

    .line 233
    iget p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4b

    .line 234
    invoke-direct {p0}, Landroid/support/constraint/helper/Layer;->transform()V

    :cond_4b
    return-void
.end method

.method public updatePreDraw(Landroid/support/constraint/ConstraintLayout;)V
    .registers 3

    .line 109
    iput-object p1, p0, Landroid/support/constraint/helper/Layer;->mContainer:Landroid/support/constraint/ConstraintLayout;

    .line 110
    invoke-virtual {p0}, Landroid/support/constraint/helper/Layer;->getRotation()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_16

    .line 112
    iget v0, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_18

    .line 113
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    goto :goto_18

    .line 116
    :cond_16
    iput p1, p0, Landroid/support/constraint/helper/Layer;->mGroupRotateAngle:F

    :cond_18
    :goto_18
    return-void
.end method
