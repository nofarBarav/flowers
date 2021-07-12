.class public Landroid/support/constraint/utils/MotionTelltales;
.super Landroid/support/constraint/utils/MockView;
.source "MotionTelltales.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionTelltales"


# instance fields
.field mInvertMatrix:Landroid/graphics/Matrix;

.field mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

.field private mPaintTelltales:Landroid/graphics/Paint;

.field mTailColor:I

.field mTailScale:F

.field mVelocityMode:I

.field velocity:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1}, Landroid/support/constraint/utils/MockView;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Landroid/support/constraint/utils/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 49
    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    const v0, -0xff01

    .line 52
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    const/high16 v0, 0x3e800000    # 0.25f

    .line 53
    iput v0, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/utils/MockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 49
    iput-object p3, p0, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    .line 50
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    const p3, -0xff01

    .line 52
    iput p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    const/high16 p3, 0x3e800000    # 0.25f

    .line 53
    iput p3, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/support/constraint/utils/MotionTelltales;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    if-eqz p2, :cond_3c

    .line 71
    sget-object v0, Landroid/support/constraint/R$styleable;->MotionTelltales:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, p2, :cond_3c

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 75
    sget v2, Landroid/support/constraint/R$styleable;->MotionTelltales_telltales_tailColor:I

    if-ne v1, v2, :cond_20

    .line 76
    iget v2, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    goto :goto_39

    .line 77
    :cond_20
    sget v2, Landroid/support/constraint/R$styleable;->MotionTelltales_telltales_velocityMode:I

    if-ne v1, v2, :cond_2d

    .line 78
    iget v2, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    goto :goto_39

    .line 79
    :cond_2d
    sget v2, Landroid/support/constraint/R$styleable;->MotionTelltales_telltales_tailScale:I

    if-ne v1, v2, :cond_39

    .line 80
    iget v2, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 84
    :cond_3c
    iget-object p1, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    iget p2, p0, Landroid/support/constraint/utils/MotionTelltales;->mTailColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object p1, p0, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 1

    .line 90
    invoke-super {p0}, Landroid/support/constraint/utils/MockView;->onAttachedToWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 24

    move-object/from16 v6, p0

    .line 106
    invoke-super/range {p0 .. p1}, Landroid/support/constraint/utils/MockView;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 108
    iget-object v1, v6, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 109
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    if-nez v0, :cond_1f

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 111
    instance-of v1, v0, Landroid/support/constraint/motion/MotionLayout;

    if-eqz v1, :cond_1e

    .line 112
    check-cast v0, Landroid/support/constraint/motion/MotionLayout;

    iput-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    :cond_1e
    return-void

    .line 116
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getWidth()I

    move-result v7

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/utils/MotionTelltales;->getHeight()I

    move-result v8

    const/4 v9, 0x5

    new-array v10, v9, [F

    .line 118
    fill-array-data v10, :array_78

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2f
    if-ge v12, v9, :cond_77

    .line 120
    aget v13, v10, v12

    const/4 v14, 0x0

    :goto_34
    if-ge v14, v9, :cond_74

    .line 122
    aget v15, v10, v14

    .line 123
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mMotionLayout:Landroid/support/constraint/motion/MotionLayout;

    iget-object v4, v6, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    iget v5, v6, Landroid/support/constraint/utils/MotionTelltales;->mVelocityMode:I

    move-object/from16 v1, p0

    move v2, v15

    move v3, v13

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/motion/MotionLayout;->getViewVelocity(Landroid/view/View;FF[FI)V

    .line 124
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    iget-object v1, v6, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V

    int-to-float v0, v7

    mul-float v17, v0, v15

    int-to-float v0, v8

    mul-float v18, v0, v13

    .line 128
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->velocity:[F

    aget v1, v0, v11

    iget v2, v6, Landroid/support/constraint/utils/MotionTelltales;->mTailScale:F

    mul-float v1, v1, v2

    sub-float v19, v17, v1

    const/4 v1, 0x1

    .line 129
    aget v1, v0, v1

    mul-float v1, v1, v2

    sub-float v20, v18, v1

    .line 130
    iget-object v1, v6, Landroid/support/constraint/utils/MotionTelltales;->mInvertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    .line 131
    iget-object v0, v6, Landroid/support/constraint/utils/MotionTelltales;->mPaintTelltales:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move-object/from16 v21, v0

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_34

    :cond_74
    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    :cond_77
    return-void

    :array_78
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 100
    invoke-super/range {p0 .. p5}, Landroid/support/constraint/utils/MockView;->onLayout(ZIIII)V

    .line 101
    invoke-virtual {p0}, Landroid/support/constraint/utils/MotionTelltales;->postInvalidate()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/utils/MotionTelltales;->mText:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Landroid/support/constraint/utils/MotionTelltales;->requestLayout()V

    return-void
.end method
