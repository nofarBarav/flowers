.class public abstract Landroid/support/constraint/motion/KeyCycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;,
        Landroid/support/constraint/motion/KeyCycleOscillator$IntFloatFloatSort;,
        Landroid/support/constraint/motion/KeyCycleOscillator$IntDoubleSort;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;,
        Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;,
        Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyCycleOscillator"


# instance fields
.field private mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

.field protected mCustom:Landroid/support/constraint/ConstraintAttribute;

.field private mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

.field private mType:Ljava/lang/String;

.field public mVariesBy:I

.field mWavePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    return-void
.end method

.method static makeSpline(Ljava/lang/String;)Landroid/support/constraint/motion/KeyCycleOscillator;
    .registers 3

    const-string v0, "CUSTOM"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$CustomSet;-><init>()V

    return-object p0

    .line 100
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_120

    goto/16 :goto_c6

    :sswitch_1b
    const-string v1, "waveOffset"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_c6

    :cond_25
    const/16 v0, 0xd

    goto/16 :goto_c6

    :sswitch_29
    const-string v1, "alpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_c6

    :cond_33
    const/16 v0, 0xc

    goto/16 :goto_c6

    :sswitch_37
    const-string v1, "transitionPathRotate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto/16 :goto_c6

    :cond_41
    const/16 v0, 0xb

    goto/16 :goto_c6

    :sswitch_45
    const-string v1, "elevation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto/16 :goto_c6

    :cond_4f
    const/16 v0, 0xa

    goto/16 :goto_c6

    :sswitch_53
    const-string v1, "rotation"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_c6

    :cond_5d
    const/16 v0, 0x9

    goto/16 :goto_c6

    :sswitch_61
    const-string v1, "waveVariesBy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6b

    goto/16 :goto_c6

    :cond_6b
    const/16 v0, 0x8

    goto/16 :goto_c6

    :sswitch_6f
    const-string v1, "scaleY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_c6

    :cond_78
    const/4 v0, 0x7

    goto :goto_c6

    :sswitch_7a
    const-string v1, "scaleX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto :goto_c6

    :cond_83
    const/4 v0, 0x6

    goto :goto_c6

    :sswitch_85
    const-string v1, "progress"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8e

    goto :goto_c6

    :cond_8e
    const/4 v0, 0x5

    goto :goto_c6

    :sswitch_90
    const-string v1, "translationZ"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto :goto_c6

    :cond_99
    const/4 v0, 0x4

    goto :goto_c6

    :sswitch_9b
    const-string v1, "translationY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a4

    goto :goto_c6

    :cond_a4
    const/4 v0, 0x3

    goto :goto_c6

    :sswitch_a6
    const-string v1, "translationX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_af

    goto :goto_c6

    :cond_af
    const/4 v0, 0x2

    goto :goto_c6

    :sswitch_b1
    const-string v1, "rotationY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ba

    goto :goto_c6

    :cond_ba
    const/4 v0, 0x1

    goto :goto_c6

    :sswitch_bc
    const-string v1, "rotationX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto :goto_c6

    :cond_c5
    const/4 v0, 0x0

    :goto_c6
    packed-switch v0, :pswitch_data_15a

    const/4 p0, 0x0

    return-object p0

    .line 118
    :pswitch_cb
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object p0

    .line 102
    :pswitch_d1
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object p0

    .line 112
    :pswitch_d7
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$PathRotateSet;-><init>()V

    return-object p0

    .line 104
    :pswitch_dd
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ElevationSet;-><init>()V

    return-object p0

    .line 106
    :pswitch_e3
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationSet;-><init>()V

    return-object p0

    .line 120
    :pswitch_e9
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$AlphaSet;-><init>()V

    return-object p0

    .line 116
    :pswitch_ef
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleYset;-><init>()V

    return-object p0

    .line 114
    :pswitch_f5
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ScaleXset;-><init>()V

    return-object p0

    .line 128
    :pswitch_fb
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$ProgressSet;-><init>()V

    return-object p0

    .line 126
    :pswitch_101
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationZset;-><init>()V

    return-object p0

    .line 124
    :pswitch_107
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationYset;-><init>()V

    return-object p0

    .line 122
    :pswitch_10d
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$TranslationXset;-><init>()V

    return-object p0

    .line 110
    :pswitch_113
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationYset;-><init>()V

    return-object p0

    .line 108
    :pswitch_119
    new-instance p0, Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;

    invoke-direct {p0}, Landroid/support/constraint/motion/KeyCycleOscillator$RotationXset;-><init>()V

    return-object p0

    nop

    :sswitch_data_120
    .sparse-switch
        -0x4a771f66 -> :sswitch_bc
        -0x4a771f65 -> :sswitch_b1
        -0x490b9c39 -> :sswitch_a6
        -0x490b9c38 -> :sswitch_9b
        -0x490b9c37 -> :sswitch_90
        -0x3bab3dd3 -> :sswitch_85
        -0x3621dfb2 -> :sswitch_7a
        -0x3621dfb1 -> :sswitch_6f
        -0x2f893320 -> :sswitch_61
        -0x266f082 -> :sswitch_53
        -0x42d1a3 -> :sswitch_45
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x94e04ec -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_119
        :pswitch_113
        :pswitch_10d
        :pswitch_107
        :pswitch_101
        :pswitch_fb
        :pswitch_f5
        :pswitch_ef
        :pswitch_e9
        :pswitch_e3
        :pswitch_dd
        :pswitch_d7
        :pswitch_d1
        :pswitch_cb
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 4

    .line 85
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->getValues(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getCurveFit()Landroid/support/constraint/motion/utils/CurveFit;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 4

    .line 89
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->getSlope(F)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public setPoint(IIIFFF)V
    .registers 9

    .line 164
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_f

    .line 166
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 168
    :cond_f
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    return-void
.end method

.method public setPoint(IIIFFFLandroid/support/constraint/ConstraintAttribute;)V
    .registers 10

    .line 146
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    invoke-direct {v1, p1, p4, p5, p6}, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;-><init>(IFFF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, -0x1

    if-eq p3, p1, :cond_f

    .line 148
    iput p3, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    .line 150
    :cond_f
    iput p2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    .line 151
    iput-object p7, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCustom:Landroid/support/constraint/ConstraintAttribute;

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(F)V
    .registers 14

    .line 173
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 177
    :cond_9
    iget-object v1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/constraint/motion/KeyCycleOscillator$1;

    invoke-direct {v2, p0}, Landroid/support/constraint/motion/KeyCycleOscillator$1;-><init>(Landroid/support/constraint/motion/KeyCycleOscillator;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-array v1, v0, [D

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v0, v3, v2

    .line 184
    const-class v5, D

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 185
    new-instance v5, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    iget v6, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWaveShape:I

    iget v7, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    invoke-direct {v5, v6, v7, v0}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;-><init>(III)V

    iput-object v5, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    .line 187
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    .line 188
    iget v6, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    aput-wide v6, v1, v11

    .line 189
    aget-object v6, v3, v11

    iget v7, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v7, v7

    aput-wide v7, v6, v2

    .line 190
    aget-object v6, v3, v11

    iget v7, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    float-to-double v7, v7

    aput-wide v7, v6, v4

    .line 191
    iget-object v6, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    iget v7, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    iget v8, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPeriod:F

    iget v9, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mOffset:F

    iget v10, v5, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    move-object v5, v6

    move v6, v11

    invoke-virtual/range {v5 .. v10}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->setPoint(IIFFF)V

    add-int/2addr v11, v4

    goto :goto_38

    .line 194
    :cond_72
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCycleOscillator:Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;

    invoke-virtual {v0, p1}, Landroid/support/constraint/motion/KeyCycleOscillator$CycleOscillator;->setup(F)V

    .line 195
    invoke-static {v2, v1, v3}, Landroid/support/constraint/motion/utils/CurveFit;->get(I[D[[D)Landroid/support/constraint/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mCurveFit:Landroid/support/constraint/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 70
    iget-object v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mType:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mWavePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mPosition:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/support/constraint/motion/KeyCycleOscillator$WavePoint;->mValue:F

    float-to-double v5, v0

    invoke-virtual {v1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_46
    return-object v0
.end method

.method public variesByPath()Z
    .registers 3

    .line 51
    iget v0, p0, Landroid/support/constraint/motion/KeyCycleOscillator;->mVariesBy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
