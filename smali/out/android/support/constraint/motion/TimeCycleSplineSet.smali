.class public abstract Landroid/support/constraint/motion/TimeCycleSplineSet;
.super Ljava/lang/Object;
.source "TimeCycleSplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;,
        Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final CURVE_OFFSET:I = 0x2

.field private static final CURVE_PERIOD:I = 0x1

.field private static final CURVE_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SplineSet"

.field private static VAL_2PI:F = 6.2831855f


# instance fields
.field private count:I

.field last_cycle:F

.field last_time:J

.field private mCache:[F

.field protected mContinue:Z

.field protected mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[[F

.field protected mWaveShape:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    .line 40
    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 41
    fill-array-data v1, :array_28

    const-class v2, F

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 44
    iput-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    .line 49
    iput-boolean v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    return-void

    :array_28
    .array-data 4
        0xa
        0x3
    .end array-data
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;J)Landroid/support/constraint/motion/TimeCycleSplineSet;
    .registers 5

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_ec

    goto/16 :goto_9c

    :sswitch_d
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_9c

    :cond_17
    const/16 v1, 0xb

    goto/16 :goto_9c

    :sswitch_1b
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_9c

    :cond_25
    const/16 v1, 0xa

    goto/16 :goto_9c

    :sswitch_29
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_9c

    :cond_33
    const/16 v1, 0x9

    goto/16 :goto_9c

    :sswitch_37
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_9c

    :cond_41
    const/16 v1, 0x8

    goto/16 :goto_9c

    :sswitch_45
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    goto :goto_9c

    :cond_4e
    const/4 v1, 0x7

    goto :goto_9c

    :sswitch_50
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_9c

    :cond_59
    const/4 v1, 0x6

    goto :goto_9c

    :sswitch_5b
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    goto :goto_9c

    :cond_64
    const/4 v1, 0x5

    goto :goto_9c

    :sswitch_66
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto :goto_9c

    :cond_6f
    const/4 v1, 0x4

    goto :goto_9c

    :sswitch_71
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto :goto_9c

    :cond_7a
    const/4 v1, 0x3

    goto :goto_9c

    :sswitch_7c
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    goto :goto_9c

    :cond_85
    const/4 v1, 0x2

    goto :goto_9c

    :sswitch_87
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_90

    goto :goto_9c

    :cond_90
    const/4 v1, 0x1

    goto :goto_9c

    :sswitch_92
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9b

    goto :goto_9c

    :cond_9b
    const/4 v1, 0x0

    :goto_9c
    packed-switch v1, :pswitch_data_11e

    const/4 p0, 0x0

    return-object p0

    .line 132
    :pswitch_a1
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$AlphaSet;-><init>()V

    goto :goto_e8

    .line 147
    :pswitch_a7
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$PathRotate;-><init>()V

    goto :goto_e8

    .line 135
    :pswitch_ad
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ElevationSet;-><init>()V

    goto :goto_e8

    .line 138
    :pswitch_b3
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationSet;-><init>()V

    goto :goto_e8

    .line 153
    :pswitch_b9
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleYset;-><init>()V

    goto :goto_e8

    .line 150
    :pswitch_bf
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ScaleXset;-><init>()V

    goto :goto_e8

    .line 165
    :pswitch_c5
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$ProgressSet;-><init>()V

    goto :goto_e8

    .line 162
    :pswitch_cb
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationZset;-><init>()V

    goto :goto_e8

    .line 159
    :pswitch_d1
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationYset;-><init>()V

    goto :goto_e8

    .line 156
    :pswitch_d7
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$TranslationXset;-><init>()V

    goto :goto_e8

    .line 144
    :pswitch_dd
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationYset;-><init>()V

    goto :goto_e8

    .line 141
    :pswitch_e3
    new-instance p0, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/TimeCycleSplineSet$RotationXset;-><init>()V

    .line 170
    :goto_e8
    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setStartTime(J)V

    return-object p0

    :sswitch_data_ec
    .sparse-switch
        -0x4a771f66 -> :sswitch_92
        -0x4a771f65 -> :sswitch_87
        -0x490b9c39 -> :sswitch_7c
        -0x490b9c38 -> :sswitch_71
        -0x490b9c37 -> :sswitch_66
        -0x3bab3dd3 -> :sswitch_5b
        -0x3621dfb2 -> :sswitch_50
        -0x3621dfb1 -> :sswitch_45
        -0x266f082 -> :sswitch_37
        -0x42d1a3 -> :sswitch_29
        0x2382115 -> :sswitch_1b
        0x589b15e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
        :pswitch_c5
        :pswitch_bf
        :pswitch_b9
        :pswitch_b3
        :pswitch_ad
        :pswitch_a7
        :pswitch_a1
    .end packed-switch
.end method


# virtual methods
.method protected calcWave(F)F
    .registers 5

    .line 100
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_48

    .line 103
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_14
    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    rem-float/2addr p1, v0

    sub-float/2addr p1, v1

    .line 115
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v2, p1

    mul-float p1, p1, p1

    :goto_22
    sub-float/2addr v2, p1

    return v2

    .line 113
    :pswitch_24
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :pswitch_2f
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    goto :goto_22

    :pswitch_34
    mul-float p1, p1, v1

    add-float/2addr p1, v2

    rem-float/2addr p1, v1

    sub-float/2addr p1, v2

    return p1

    .line 107
    :pswitch_3a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_22

    .line 105
    :pswitch_3f
    sget v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->VAL_2PI:F

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    return p1

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3a
        :pswitch_34
        :pswitch_2f
        :pswitch_24
        :pswitch_14
    .end packed-switch
.end method

.method public get(FJLandroid/view/View;Landroid/support/constraint/motion/KeyCache;)F
    .registers 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 70
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    move/from16 v6, p1

    float-to-double v6, v6

    iget-object v8, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(D[F)V

    .line 71
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v6, 0x1

    aget v7, v5, v6

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    cmpl-float v11, v7, v9

    if-nez v11, :cond_23

    .line 73
    iput-boolean v10, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    .line 74
    aget v1, v5, v8

    return v1

    .line 76
    :cond_23
    iget v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 77
    iget-object v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v10}, Landroid/support/constraint/motion/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v5

    iput v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 78
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 79
    iput v9, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 82
    :cond_3b
    iget-wide v11, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    sub-long v11, v1, v11

    .line 83
    iget v5, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    float-to-double v13, v5

    long-to-double v11, v11

    const-wide v15, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v15

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v11

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v13, v8

    double-to-float v8, v13

    iput v8, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    .line 84
    iget-object v9, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {v4, v3, v9, v10, v8}, Landroid/support/constraint/motion/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    .line 85
    iput-wide v1, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    .line 86
    iget-object v1, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    aget v1, v1, v10

    .line 87
    iget v2, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_cycle:F

    invoke-virtual {v0, v2}, Landroid/support/constraint/motion/TimeCycleSplineSet;->calcWave(F)F

    move-result v2

    .line 88
    iget-object v3, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCache:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    mul-float v2, v2, v1

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_81

    cmpl-float v1, v7, v3

    if-eqz v1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v6, 0x0

    .line 90
    :cond_81
    :goto_81
    iput-boolean v6, v0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mContinue:Z

    return v2
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public setPoint(IFFIF)V
    .registers 9

    .line 179
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    aput p1, v0, v1

    .line 180
    iget-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x0

    aput p2, v0, v2

    .line 181
    aget-object p2, p1, v1

    const/4 v0, 0x1

    aput p3, p2, v0

    .line 182
    aget-object p1, p1, v1

    const/4 p2, 0x2

    aput p5, p1, p2

    .line 183
    iget p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mWaveShape:I

    .line 184
    iget p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroid/support/constraint/motion/KeyCache;)Z
.end method

.method protected setStartTime(J)V
    .registers 3

    .line 175
    iput-wide p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->last_time:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .registers 13

    .line 188
    iget v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-nez v0, :cond_1d

    .line 189
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error no points added to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplineSet"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_1d
    iget-object v1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroid/support/constraint/motion/TimeCycleSplineSet$Sort;->doubleQuickSort([I[[FII)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    :goto_29
    iget-object v2, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    array-length v5, v2

    if-ge v0, v5, :cond_3b

    .line 195
    aget v5, v2, v0

    add-int/lit8 v6, v0, -0x1

    aget v2, v2, v6

    if-eq v5, v2, :cond_38

    add-int/lit8 v1, v1, 0x1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    if-nez v1, :cond_3e

    const/4 v1, 0x1

    .line 202
    :cond_3e
    new-array v0, v1, [D

    const/4 v2, 0x3

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v3

    aput v1, v6, v4

    .line 203
    const-class v1, D

    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 206
    :goto_52
    iget v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v2, v7, :cond_96

    if-lez v2, :cond_63

    .line 207
    iget-object v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v8, v7, v2

    add-int/lit8 v9, v2, -0x1

    aget v7, v7, v9

    if-ne v8, v7, :cond_63

    goto :goto_93

    .line 210
    :cond_63
    iget-object v7, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v7, v7, v2

    int-to-double v7, v7

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    aput-wide v7, v0, v6

    .line 211
    aget-object v7, v1, v6

    iget-object v8, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v9, v8, v2

    aget v9, v9, v4

    float-to-double v9, v9

    aput-wide v9, v7, v4

    .line 212
    aget-object v7, v1, v6

    aget-object v9, v8, v2

    aget v9, v9, v3

    float-to-double v9, v9

    aput-wide v9, v7, v3

    .line 213
    aget-object v7, v1, v6

    aget-object v8, v8, v2

    aget v8, v8, v5

    float-to-double v8, v8

    aput-wide v8, v7, v5

    add-int/lit8 v6, v6, 0x1

    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 216
    :cond_96
    invoke-static {p1, v0, v1}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 55
    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mType:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 57
    :goto_a
    iget v3, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->count:I

    if-ge v2, v3, :cond_3e

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mTimePoints:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/TimeCycleSplineSet;->mValues:[[F

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3e
    return-object v0
.end method
