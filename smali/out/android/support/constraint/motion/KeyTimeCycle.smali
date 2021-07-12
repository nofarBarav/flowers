.class public Landroid/support/constraint/motion/KeyTimeCycle;
.super Landroid/support/constraint/motion/Key;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyTimeCycle$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x3

.field static final NAME:Ljava/lang/String; = "KeyTimeCycle"

.field private static final TAG:Ljava/lang/String; = "KeyTimeCycle"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mProgress:F

.field private mRotation:F

.field private mRotationX:F

.field private mRotationY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTransitionEasing:Ljava/lang/String;

.field private mTransitionPathRotate:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private mTranslationZ:F

.field private mWaveOffset:F

.field private mWaveOffsetSpline:Landroid/support/constraint/motion/utils/CurveFit;

.field private mWavePeriod:F

.field private mWavePeriodSpline:Landroid/support/constraint/motion/utils/CurveFit;

.field private mWaveShape:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 43
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    .line 44
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    .line 45
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    .line 53
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    const/4 v0, 0x3

    .line 63
    iput v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mType:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    return p0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    return p0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 38
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    return p0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    return p0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    return p0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    return p0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    return p0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1600(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    return p0
.end method

.method static synthetic access$1602(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyTimeCycle;)I
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return p0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyTimeCycle;I)I
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyTimeCycle;)I
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    return p0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyTimeCycle;I)I
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    return p0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    return p0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    return p0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    return p0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    return p1
.end method

.method static synthetic access$900(Landroid/support/constraint/motion/KeyTimeCycle;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    return p0
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyTimeCycle;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    return p1
.end method


# virtual methods
.method public addTimeValues(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/TimeCycleSplineSet;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/support/constraint/motion/TimeCycleSplineSet;

    const-string v2, "CUSTOM"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x7

    if-eqz v2, :cond_42

    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/support/constraint/ConstraintAttribute;

    if-eqz v6, :cond_8

    .line 187
    move-object v4, v3

    check-cast v4, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v9, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v4 .. v9}, Landroid/support/constraint/motion/TimeCycleSplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;FIF)V

    goto :goto_8

    .line 191
    :cond_42
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_20e

    :goto_4d
    const/4 v4, -0x1

    goto/16 :goto_d9

    :sswitch_50
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto :goto_4d

    :cond_59
    const/16 v4, 0xb

    goto/16 :goto_d9

    :sswitch_5d
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto :goto_4d

    :cond_66
    const/16 v4, 0xa

    goto/16 :goto_d9

    :sswitch_6a
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    goto :goto_4d

    :cond_73
    const/16 v4, 0x9

    goto/16 :goto_d9

    :sswitch_77
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    goto :goto_4d

    :cond_80
    const/16 v4, 0x8

    goto :goto_d9

    :sswitch_83
    const-string v5, "scaleY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d9

    goto :goto_4d

    :sswitch_8c
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_95

    goto :goto_4d

    :cond_95
    const/4 v4, 0x6

    goto :goto_d9

    :sswitch_97
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    goto :goto_4d

    :cond_a0
    const/4 v4, 0x5

    goto :goto_d9

    :sswitch_a2
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    goto :goto_4d

    :cond_ab
    const/4 v4, 0x4

    goto :goto_d9

    :sswitch_ad
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b6

    goto :goto_4d

    :cond_b6
    const/4 v4, 0x3

    goto :goto_d9

    :sswitch_b8
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c1

    goto :goto_4d

    :cond_c1
    const/4 v4, 0x2

    goto :goto_d9

    :sswitch_c3
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cc

    goto :goto_4d

    :cond_cc
    const/4 v4, 0x1

    goto :goto_d9

    :sswitch_ce
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d8

    goto/16 :goto_4d

    :cond_d8
    const/4 v4, 0x0

    :cond_d9
    :goto_d9
    packed-switch v4, :pswitch_data_240

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN addValues \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyTimeCycles"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 193
    :pswitch_f9
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 194
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 218
    :pswitch_110
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 219
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 198
    :pswitch_127
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 199
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 203
    :pswitch_13e
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 204
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 228
    :pswitch_155
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 229
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 223
    :pswitch_16c
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 224
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 248
    :pswitch_183
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 249
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 243
    :pswitch_19a
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 244
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 238
    :pswitch_1b1
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 239
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 233
    :pswitch_1c8
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 234
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 213
    :pswitch_1df
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 214
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    .line 208
    :pswitch_1f6
    iget v1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 209
    iget v4, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    iget v5, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    iget v6, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWavePeriod:F

    iget v7, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveShape:I

    iget v8, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mWaveOffset:F

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/motion/TimeCycleSplineSet;->setPoint(IFFIF)V

    goto/16 :goto_8

    :cond_20d
    return-void

    :sswitch_data_20e
    .sparse-switch
        -0x4a771f66 -> :sswitch_ce
        -0x4a771f65 -> :sswitch_c3
        -0x490b9c39 -> :sswitch_b8
        -0x490b9c38 -> :sswitch_ad
        -0x490b9c37 -> :sswitch_a2
        -0x3bab3dd3 -> :sswitch_97
        -0x3621dfb2 -> :sswitch_8c
        -0x3621dfb1 -> :sswitch_83
        -0x266f082 -> :sswitch_77
        -0x42d1a3 -> :sswitch_6a
        0x2382115 -> :sswitch_5d
        0x589b15e -> :sswitch_50
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_1f6
        :pswitch_1df
        :pswitch_1c8
        :pswitch_1b1
        :pswitch_19a
        :pswitch_183
        :pswitch_16c
        :pswitch_155
        :pswitch_13e
        :pswitch_127
        :pswitch_110
        :pswitch_f9
    .end packed-switch
.end method

.method public addValues(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 177
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " KeyTimeCycles do not support SplineSet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 84
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    .line 85
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_d
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    .line 88
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1a
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "rotation"

    .line 91
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_27
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "rotationX"

    .line 94
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_34
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "rotationY"

    .line 97
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_41
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "translationX"

    .line 100
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_4e
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "translationY"

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_5b
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "translationZ"

    .line 106
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "transitionPathRotate"

    .line 109
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_75
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "scaleX"

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_82
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "scaleY"

    .line 115
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_8f
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "progress"

    .line 118
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_9c
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_cf

    .line 121
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ae
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    :cond_cf
    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 69
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyTimeCycle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    invoke-static {p0, p1}, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->read(Landroid/support/constraint/motion/KeyTimeCycle;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 131
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    .line 132
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_19
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 135
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2c
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 138
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_3f
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    .line 141
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_52
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_65

    .line 144
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_65
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    .line 147
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_78
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 150
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_8b
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 153
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_9e
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 156
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_b1
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 159
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_c4
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 162
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_d7
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 165
    iget v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_ea
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_123

    .line 168
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    :cond_123
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_11e

    goto/16 :goto_b8

    :sswitch_d
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_b8

    :cond_17
    const/16 v1, 0xd

    goto/16 :goto_b8

    :sswitch_1b
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_b8

    :cond_25
    const/16 v1, 0xc

    goto/16 :goto_b8

    :sswitch_29
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_b8

    :cond_33
    const/16 v1, 0xb

    goto/16 :goto_b8

    :sswitch_37
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_b8

    :cond_41
    const/16 v1, 0xa

    goto/16 :goto_b8

    :sswitch_45
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto/16 :goto_b8

    :cond_4f
    const/16 v1, 0x9

    goto/16 :goto_b8

    :sswitch_53
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto/16 :goto_b8

    :cond_5d
    const/16 v1, 0x8

    goto/16 :goto_b8

    :sswitch_61
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_b8

    :cond_6a
    const/4 v1, 0x7

    goto :goto_b8

    :sswitch_6c
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_75

    goto :goto_b8

    :cond_75
    const/4 v1, 0x6

    goto :goto_b8

    :sswitch_77
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    goto :goto_b8

    :cond_80
    const/4 v1, 0x5

    goto :goto_b8

    :sswitch_82
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8b

    goto :goto_b8

    :cond_8b
    const/4 v1, 0x4

    goto :goto_b8

    :sswitch_8d
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_96

    goto :goto_b8

    :cond_96
    const/4 v1, 0x3

    goto :goto_b8

    :sswitch_98
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a1

    goto :goto_b8

    :cond_a1
    const/4 v1, 0x2

    goto :goto_b8

    :sswitch_a3
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ac

    goto :goto_b8

    :cond_ac
    const/4 v1, 0x1

    goto :goto_b8

    :sswitch_ae
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    packed-switch v1, :pswitch_data_158

    goto :goto_11d

    .line 301
    :pswitch_bc
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationZ:F

    goto :goto_11d

    .line 265
    :pswitch_c3
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mCurveFit:I

    goto :goto_11d

    .line 262
    :pswitch_ca
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mAlpha:F

    goto :goto_11d

    .line 292
    :pswitch_d1
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionPathRotate:F

    goto :goto_11d

    .line 268
    :pswitch_d8
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mElevation:F

    goto :goto_11d

    .line 274
    :pswitch_df
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotation:F

    goto :goto_11d

    .line 286
    :pswitch_e6
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleY:F

    goto :goto_11d

    .line 283
    :pswitch_ed
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mScaleX:F

    goto :goto_11d

    .line 271
    :pswitch_f4
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mProgress:F

    goto :goto_11d

    .line 298
    :pswitch_fb
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationY:F

    goto :goto_11d

    .line 295
    :pswitch_102
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTranslationX:F

    goto :goto_11d

    .line 280
    :pswitch_109
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationY:F

    goto :goto_11d

    .line 277
    :pswitch_110
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyTimeCycle;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mRotationX:F

    goto :goto_11d

    .line 289
    :pswitch_117
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTransitionEasing:Ljava/lang/String;

    :goto_11d
    return-void

    :sswitch_data_11e
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_ae
        -0x4a771f66 -> :sswitch_a3
        -0x4a771f65 -> :sswitch_98
        -0x490b9c39 -> :sswitch_8d
        -0x490b9c38 -> :sswitch_82
        -0x3bab3dd3 -> :sswitch_77
        -0x3621dfb2 -> :sswitch_6c
        -0x3621dfb1 -> :sswitch_61
        -0x266f082 -> :sswitch_53
        -0x42d1a3 -> :sswitch_45
        0x2382115 -> :sswitch_37
        0x589b15e -> :sswitch_29
        0x2283b8a2 -> :sswitch_1b
        0x4e897cd6 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_117
        :pswitch_110
        :pswitch_109
        :pswitch_102
        :pswitch_fb
        :pswitch_f4
        :pswitch_ed
        :pswitch_e6
        :pswitch_df
        :pswitch_d8
        :pswitch_d1
        :pswitch_ca
        :pswitch_c3
        :pswitch_bc
    .end packed-switch
.end method
