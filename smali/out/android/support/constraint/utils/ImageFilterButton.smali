.class public Landroid/support/constraint/utils/ImageFilterButton;
.super Landroid/support/v7/widget/AppCompatImageButton;
.source "ImageFilterButton.java"


# instance fields
.field private mCrossfade:F

.field private mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 95
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 85
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/utils/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 84
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 85
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p3, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-direct {p3}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;-><init>()V

    iput-object p3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    const/4 p3, 0x0

    .line 83
    iput p3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 84
    iput p3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 85
    iput p3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/ImageFilterButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/utils/ImageFilterButton;)F
    .registers 1

    .line 81
    iget p0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    return p0
.end method

.method static synthetic access$100(Landroid/support/constraint/utils/ImageFilterButton;)F
    .registers 1

    .line 81
    iget p0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/support/constraint/utils/ImageFilterButton;->setPadding(IIII)V

    if-eqz p2, :cond_aa

    .line 112
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/constraint/R$styleable;->ImageFilterView:[I

    .line 113
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 115
    sget v1, Landroid/support/constraint/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v0, :cond_79

    .line 118
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 119
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_crossfade:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2d

    .line 120
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    goto :goto_76

    .line 121
    :cond_2d
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_warmth:I

    if-ne v3, v4, :cond_39

    .line 122
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/utils/ImageFilterButton;->setWarmth(F)V

    goto :goto_76

    .line 123
    :cond_39
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_saturation:I

    if-ne v3, v4, :cond_45

    .line 124
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/utils/ImageFilterButton;->setSaturation(F)V

    goto :goto_76

    .line 125
    :cond_45
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_contrast:I

    if-ne v3, v4, :cond_51

    .line 126
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/utils/ImageFilterButton;->setContrast(F)V

    goto :goto_76

    .line 127
    :cond_51
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_round:I

    if-ne v3, v4, :cond_5d

    .line 128
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/utils/ImageFilterButton;->setRound(F)V

    goto :goto_76

    .line 129
    :cond_5d
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v3, v4, :cond_69

    .line 130
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/constraint/utils/ImageFilterButton;->setRoundPercent(F)V

    goto :goto_76

    .line 131
    :cond_69
    sget v4, Landroid/support/constraint/R$styleable;->ImageFilterView_overlay:I

    if-ne v3, v4, :cond_76

    .line 132
    iget-boolean v4, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-direct {p0, v3}, Landroid/support/constraint/utils/ImageFilterButton;->setOverlay(Z)V

    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 135
    :cond_79
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_aa

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    .line 138
    iput-object p2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 139
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, p1

    .line 140
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    aput-object v1, p1, p2

    .line 142
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 143
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p2, 0x437f0000    # 255.0f

    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 144
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_aa
    return-void
.end method

.method private setOverlay(Z)V
    .registers 2

    .line 156
    iput-boolean p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1b

    .line 385
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 388
    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 391
    :goto_1c
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_24

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_24
    return-void
.end method

.method public getContrast()F
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    return v0
.end method

.method public getCrossfade()F
    .registers 2

    .line 240
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    return v0
.end method

.method public getRound()F
    .registers 2

    .line 378
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    return v0
.end method

.method public getRoundPercent()F
    .registers 2

    .line 369
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    return v0
.end method

.method public getSaturation()F
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    return v0
.end method

.method public getWarmth()F
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iget v0, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    return v0
.end method

.method public setBrightness(F)V
    .registers 3

    .line 251
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mBrightness:F

    .line 252
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {p1, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setContrast(F)V
    .registers 3

    .line 186
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mContrast:F

    .line 187
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {p1, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCrossfade(F)V
    .registers 5

    .line 224
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    .line 225
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_32

    .line 226
    iget-boolean p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mOverlay:Z

    const/high16 v0, 0x437f0000    # 255.0f

    if-nez p1, :cond_1e

    .line 227
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    :cond_1e
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mCrossfade:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_32
    return-void
.end method

.method public setRound(F)V
    .registers 7

    .line 313
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 314
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    .line 315
    iget p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 316
    iput v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    .line 317
    invoke-virtual {p0, p1}, Landroid/support/constraint/utils/ImageFilterButton;->setRoundPercent(F)V

    return-void

    .line 320
    :cond_12
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 321
    :goto_1d
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_71

    .line 324
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_31

    .line 325
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 327
    :cond_31
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez p1, :cond_3c

    .line 328
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 330
    :cond_3c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_51

    .line 331
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_4e

    .line 332
    new-instance p1, Landroid/support/constraint/utils/ImageFilterButton$2;

    invoke-direct {p1, p0}, Landroid/support/constraint/utils/ImageFilterButton$2;-><init>(Landroid/support/constraint/utils/ImageFilterButton;)V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 340
    invoke-virtual {p0, p1}, Landroid/support/constraint/utils/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 342
    :cond_4e
    invoke-virtual {p0, v1}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    .line 345
    :cond_51
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getWidth()I

    move-result p1

    .line 346
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getHeight()I

    move-result v1

    .line 347
    iget-object v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v2, v4, v4, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 348
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 349
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRound:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_78

    .line 351
    :cond_71
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_78

    .line 352
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    :cond_78
    :goto_78
    if-eqz v0, :cond_81

    .line 356
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_81

    .line 357
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->invalidateOutline()V

    :cond_81
    return-void
.end method

.method public setRoundPercent(F)V
    .registers 8

    .line 263
    iget v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 264
    :goto_b
    iput p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    const/16 v3, 0x15

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_69

    .line 266
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_1f

    .line 267
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    .line 269
    :cond_1f
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    if-nez p1, :cond_2a

    .line 270
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    .line 272
    :cond_2a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_3f

    .line 273
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_3c

    .line 274
    new-instance p1, Landroid/support/constraint/utils/ImageFilterButton$1;

    invoke-direct {p1, p0}, Landroid/support/constraint/utils/ImageFilterButton$1;-><init>(Landroid/support/constraint/utils/ImageFilterButton;)V

    iput-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 283
    invoke-virtual {p0, p1}, Landroid/support/constraint/utils/ImageFilterButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 285
    :cond_3c
    invoke-virtual {p0, v1}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    .line 287
    :cond_3f
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getWidth()I

    move-result p1

    .line 288
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->getHeight()I

    move-result v1

    .line 289
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRoundPercent:F

    mul-float v2, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 290
    iget-object v5, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v5, v4, v4, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 291
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 292
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mRect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_70

    .line 294
    :cond_69
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_70

    .line 295
    invoke-virtual {p0, v2}, Landroid/support/constraint/utils/ImageFilterButton;->setClipToOutline(Z)V

    :cond_70
    :goto_70
    if-eqz v0, :cond_79

    .line 299
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_79

    .line 300
    invoke-virtual {p0}, Landroid/support/constraint/utils/ImageFilterButton;->invalidateOutline()V

    :cond_79
    return-void
.end method

.method public setSaturation(F)V
    .registers 3

    .line 167
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mSaturation:F

    .line 168
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {p1, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setWarmth(F)V
    .registers 3

    .line 205
    iget-object v0, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    iput p1, v0, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->mWarmth:F

    .line 206
    iget-object p1, p0, Landroid/support/constraint/utils/ImageFilterButton;->mImageMatrix:Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;

    invoke-virtual {p1, p0}, Landroid/support/constraint/utils/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method
