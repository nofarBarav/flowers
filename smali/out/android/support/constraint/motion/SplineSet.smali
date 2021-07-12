.class public abstract Landroid/support/constraint/motion/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/SplineSet$Sort;,
        Landroid/support/constraint/motion/SplineSet$ProgressSet;,
        Landroid/support/constraint/motion/SplineSet$CustomSet;,
        Landroid/support/constraint/motion/SplineSet$TranslationZset;,
        Landroid/support/constraint/motion/SplineSet$TranslationYset;,
        Landroid/support/constraint/motion/SplineSet$TranslationXset;,
        Landroid/support/constraint/motion/SplineSet$ScaleYset;,
        Landroid/support/constraint/motion/SplineSet$ScaleXset;,
        Landroid/support/constraint/motion/SplineSet$PathRotate;,
        Landroid/support/constraint/motion/SplineSet$PivotYset;,
        Landroid/support/constraint/motion/SplineSet$PivotXset;,
        Landroid/support/constraint/motion/SplineSet$RotationYset;,
        Landroid/support/constraint/motion/SplineSet$RotationXset;,
        Landroid/support/constraint/motion/SplineSet$RotationSet;,
        Landroid/support/constraint/motion/SplineSet$AlphaSet;,
        Landroid/support/constraint/motion/SplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 40
    iput-object v1, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroid/support/constraint/motion/SplineSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;)",
            "Landroid/support/constraint/motion/SplineSet;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroid/support/constraint/motion/SplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroid/support/constraint/motion/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;)Landroid/support/constraint/motion/SplineSet;
    .registers 3

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_13a

    goto/16 :goto_d4

    :sswitch_d
    const-string v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_d4

    :cond_17
    const/16 v1, 0xf

    goto/16 :goto_d4

    :sswitch_1b
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_d4

    :cond_25
    const/16 v1, 0xe

    goto/16 :goto_d4

    :sswitch_29
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_d4

    :cond_33
    const/16 v1, 0xd

    goto/16 :goto_d4

    :sswitch_37
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_d4

    :cond_41
    const/16 v1, 0xc

    goto/16 :goto_d4

    :sswitch_45
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_d4

    :cond_4f
    const/16 v1, 0xb

    goto/16 :goto_d4

    :sswitch_53
    const-string v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_d4

    :cond_5d
    const/16 v1, 0xa

    goto/16 :goto_d4

    :sswitch_61
    const-string v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto/16 :goto_d4

    :cond_6b
    const/16 v1, 0x9

    goto/16 :goto_d4

    :sswitch_6f
    const-string v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_79

    goto/16 :goto_d4

    :cond_79
    const/16 v1, 0x8

    goto/16 :goto_d4

    :sswitch_7d
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_86

    goto :goto_d4

    :cond_86
    const/4 v1, 0x7

    goto :goto_d4

    :sswitch_88
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    goto :goto_d4

    :cond_91
    const/4 v1, 0x6

    goto :goto_d4

    :sswitch_93
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9c

    goto :goto_d4

    :cond_9c
    const/4 v1, 0x5

    goto :goto_d4

    :sswitch_9e
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a7

    goto :goto_d4

    :cond_a7
    const/4 v1, 0x4

    goto :goto_d4

    :sswitch_a9
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b2

    goto :goto_d4

    :cond_b2
    const/4 v1, 0x3

    goto :goto_d4

    :sswitch_b4
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto :goto_d4

    :cond_bd
    const/4 v1, 0x2

    goto :goto_d4

    :sswitch_bf
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c8

    goto :goto_d4

    :cond_c8
    const/4 v1, 0x1

    goto :goto_d4

    :sswitch_ca
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d3

    goto :goto_d4

    :cond_d3
    const/4 v1, 0x0

    :goto_d4
    packed-switch v1, :pswitch_data_17c

    const/4 p0, 0x0

    return-object p0

    .line 101
    :pswitch_d9
    new-instance p0, Landroid/support/constraint/motion/SplineSet$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$AlphaSet;-><init>()V

    return-object p0

    .line 81
    :pswitch_df
    new-instance p0, Landroid/support/constraint/motion/SplineSet$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$AlphaSet;-><init>()V

    return-object p0

    .line 95
    :pswitch_e5
    new-instance p0, Landroid/support/constraint/motion/SplineSet$PathRotate;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$PathRotate;-><init>()V

    return-object p0

    .line 83
    :pswitch_eb
    new-instance p0, Landroid/support/constraint/motion/SplineSet$ElevationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$ElevationSet;-><init>()V

    return-object p0

    .line 85
    :pswitch_f1
    new-instance p0, Landroid/support/constraint/motion/SplineSet$RotationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$RotationSet;-><init>()V

    return-object p0

    .line 93
    :pswitch_f7
    new-instance p0, Landroid/support/constraint/motion/SplineSet$PivotYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$PivotYset;-><init>()V

    return-object p0

    .line 91
    :pswitch_fd
    new-instance p0, Landroid/support/constraint/motion/SplineSet$PivotXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$PivotXset;-><init>()V

    return-object p0

    .line 103
    :pswitch_103
    new-instance p0, Landroid/support/constraint/motion/SplineSet$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$AlphaSet;-><init>()V

    return-object p0

    .line 99
    :pswitch_109
    new-instance p0, Landroid/support/constraint/motion/SplineSet$ScaleYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$ScaleYset;-><init>()V

    return-object p0

    .line 97
    :pswitch_10f
    new-instance p0, Landroid/support/constraint/motion/SplineSet$ScaleXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$ScaleXset;-><init>()V

    return-object p0

    .line 111
    :pswitch_115
    new-instance p0, Landroid/support/constraint/motion/SplineSet$ProgressSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$ProgressSet;-><init>()V

    return-object p0

    .line 109
    :pswitch_11b
    new-instance p0, Landroid/support/constraint/motion/SplineSet$TranslationZset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$TranslationZset;-><init>()V

    return-object p0

    .line 107
    :pswitch_121
    new-instance p0, Landroid/support/constraint/motion/SplineSet$TranslationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$TranslationYset;-><init>()V

    return-object p0

    .line 105
    :pswitch_127
    new-instance p0, Landroid/support/constraint/motion/SplineSet$TranslationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$TranslationXset;-><init>()V

    return-object p0

    .line 89
    :pswitch_12d
    new-instance p0, Landroid/support/constraint/motion/SplineSet$RotationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$RotationYset;-><init>()V

    return-object p0

    .line 87
    :pswitch_133
    new-instance p0, Landroid/support/constraint/motion/SplineSet$RotationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/SplineSet$RotationXset;-><init>()V

    return-object p0

    nop

    :sswitch_data_13a
    .sparse-switch
        -0x4a771f66 -> :sswitch_ca
        -0x4a771f65 -> :sswitch_bf
        -0x490b9c39 -> :sswitch_b4
        -0x490b9c38 -> :sswitch_a9
        -0x490b9c37 -> :sswitch_9e
        -0x3bab3dd3 -> :sswitch_93
        -0x3621dfb2 -> :sswitch_88
        -0x3621dfb1 -> :sswitch_7d
        -0x2f893320 -> :sswitch_6f
        -0x2d5a2d1e -> :sswitch_61
        -0x2d5a2d1d -> :sswitch_53
        -0x266f082 -> :sswitch_45
        -0x42d1a3 -> :sswitch_37
        0x2382115 -> :sswitch_29
        0x589b15e -> :sswitch_1b
        0x94e04ec -> :sswitch_d
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_133
        :pswitch_12d
        :pswitch_127
        :pswitch_121
        :pswitch_11b
        :pswitch_115
        :pswitch_10f
        :pswitch_109
        :pswitch_103
        :pswitch_fd
        :pswitch_f7
        :pswitch_f1
        :pswitch_eb
        :pswitch_e5
        :pswitch_df
        :pswitch_d9
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 5

    .line 63
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/constraint/motion/utils/CurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 5

    .line 67
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/constraint/motion/utils/CurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public setPoint(IF)V
    .registers 6

    .line 120
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    array-length v1, v0

    iget v2, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1d

    .line 121
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    .line 122
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    .line 124
    :cond_1d
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    iget v1, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    aput p1, v0, v1

    .line 125
    iget-object p1, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 126
    iput v1, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Landroid/support/constraint/motion/SplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .registers 11

    .line 130
    iget v0, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-nez v0, :cond_5

    return-void

    .line 134
    :cond_5
    iget-object v1, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroid/support/constraint/motion/SplineSet$Sort;->doubleQuickSort([I[FII)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 138
    :goto_11
    iget v2, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-ge v0, v2, :cond_24

    .line 139
    iget-object v2, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    add-int/lit8 v5, v0, -0x1

    aget v5, v2, v5

    aget v2, v2, v0

    if-eq v5, v2, :cond_21

    add-int/lit8 v1, v1, 0x1

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 144
    :cond_24
    new-array v0, v1, [D

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput v1, v2, v4

    .line 145
    const-class v1, D

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 147
    :goto_37
    iget v5, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-ge v2, v5, :cond_67

    if-lez v2, :cond_48

    .line 148
    iget-object v5, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    aget v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget v5, v5, v7

    if-ne v6, v5, :cond_48

    goto :goto_64

    .line 152
    :cond_48
    iget-object v5, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    aget v5, v5, v2

    int-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v7

    aput-wide v5, v0, v3

    .line 153
    aget-object v5, v1, v3

    iget-object v6, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 156
    :cond_67
    invoke-static {p1, v0, v1}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/SplineSet;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 47
    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mType:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 49
    :goto_a
    iget v3, p0, Landroid/support/constraint/motion/SplineSet;->count:I

    if-ge v2, v3, :cond_3f

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mTimePoints:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/SplineSet;->mValues:[F

    aget v0, v0, v2

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3f
    return-object v0
.end method
