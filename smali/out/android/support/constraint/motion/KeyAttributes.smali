.class public Landroid/support/constraint/motion/KeyAttributes;
.super Landroid/support/constraint/motion/Key;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyAttributes$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x1

.field static final NAME:Ljava/lang/String; = "KeyAttribute"

.field private static final TAG:Ljava/lang/String; = "KeyAttribute"


# instance fields
.field private mAlpha:F

.field private mCurveFit:I

.field private mElevation:F

.field private mPivotX:F

.field private mPivotY:F

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

.field private mVisibility:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mVisibility:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 44
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    .line 45
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    .line 46
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    .line 47
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    .line 53
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    .line 55
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    .line 57
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mType:I

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    return p0
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    return p0
.end method

.method static synthetic access$1000(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    return p0
.end method

.method static synthetic access$1002(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    return p1
.end method

.method static synthetic access$1100(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    return p0
.end method

.method static synthetic access$1102(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    return p1
.end method

.method static synthetic access$1200(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    return p0
.end method

.method static synthetic access$1202(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    return p1
.end method

.method static synthetic access$1300(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    return p0
.end method

.method static synthetic access$1302(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    return p1
.end method

.method static synthetic access$1400(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    return p0
.end method

.method static synthetic access$1402(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    return p1
.end method

.method static synthetic access$1500(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    return p0
.end method

.method static synthetic access$1502(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    return p1
.end method

.method static synthetic access$200(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    return p0
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    return p1
.end method

.method static synthetic access$300(Landroid/support/constraint/motion/KeyAttributes;)I
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return p0
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyAttributes;I)I
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    return p0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    return p0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    return p0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    return p0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    return p1
.end method

.method static synthetic access$800(Landroid/support/constraint/motion/KeyAttributes;)F
    .registers 1

    .line 38
    iget p0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    return p0
.end method

.method static synthetic access$802(Landroid/support/constraint/motion/KeyAttributes;F)F
    .registers 2

    .line 38
    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    return p1
.end method

.method static synthetic access$902(Landroid/support/constraint/motion/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 38
    iput-object p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/SplineSet;

    const-string v3, "CUSTOM"

    .line 190
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x7

    if-eqz v3, :cond_39

    .line 191
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintAttribute;

    if-eqz v1, :cond_8

    .line 194
    check-cast v2, Landroid/support/constraint/motion/SplineSet$CustomSet;

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    invoke-virtual {v2, v3, v1}, Landroid/support/constraint/motion/SplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;)V

    goto :goto_8

    .line 198
    :cond_39
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1fc

    :goto_44
    const/4 v4, -0x1

    goto/16 :goto_ed

    :sswitch_47
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_44

    :cond_50
    const/16 v4, 0xd

    goto/16 :goto_ed

    :sswitch_54
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto :goto_44

    :cond_5d
    const/16 v4, 0xc

    goto/16 :goto_ed

    :sswitch_61
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto :goto_44

    :cond_6a
    const/16 v4, 0xb

    goto/16 :goto_ed

    :sswitch_6e
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_77

    goto :goto_44

    :cond_77
    const/16 v4, 0xa

    goto/16 :goto_ed

    :sswitch_7b
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_84

    goto :goto_44

    :cond_84
    const/16 v4, 0x9

    goto/16 :goto_ed

    :sswitch_88
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    goto :goto_44

    :cond_91
    const/16 v4, 0x8

    goto :goto_ed

    :sswitch_94
    const-string v5, "scaleY"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ed

    goto :goto_44

    :sswitch_9d
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    goto :goto_44

    :cond_a6
    const/4 v4, 0x6

    goto :goto_ed

    :sswitch_a8
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    goto :goto_44

    :cond_b1
    const/4 v4, 0x5

    goto :goto_ed

    :sswitch_b3
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    goto :goto_44

    :cond_bc
    const/4 v4, 0x4

    goto :goto_ed

    :sswitch_be
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c8

    goto/16 :goto_44

    :cond_c8
    const/4 v4, 0x3

    goto :goto_ed

    :sswitch_ca
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d4

    goto/16 :goto_44

    :cond_d4
    const/4 v4, 0x2

    goto :goto_ed

    :sswitch_d6
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e0

    goto/16 :goto_44

    :cond_e0
    const/4 v4, 0x1

    goto :goto_ed

    :sswitch_e2
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ec

    goto/16 :goto_44

    :cond_ec
    const/4 v4, 0x0

    :cond_ed
    :goto_ed
    packed-switch v4, :pswitch_data_236

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN addValues \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyAttributes"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 200
    :pswitch_10d
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 201
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 235
    :pswitch_11e
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 236
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 205
    :pswitch_12f
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 206
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 210
    :pswitch_140
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 211
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 230
    :pswitch_151
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 231
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 225
    :pswitch_162
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 226
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 245
    :pswitch_173
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 246
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 240
    :pswitch_184
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 241
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 265
    :pswitch_195
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 266
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 260
    :pswitch_1a6
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 261
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 255
    :pswitch_1b7
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 256
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 250
    :pswitch_1c8
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 251
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 220
    :pswitch_1d9
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 221
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 215
    :pswitch_1ea
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 216
    iget v1, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-virtual {v2, v1, v3}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :cond_1fb
    return-void

    :sswitch_data_1fc
    .sparse-switch
        -0x4a771f66 -> :sswitch_e2
        -0x4a771f65 -> :sswitch_d6
        -0x490b9c39 -> :sswitch_ca
        -0x490b9c38 -> :sswitch_be
        -0x490b9c37 -> :sswitch_b3
        -0x3bab3dd3 -> :sswitch_a8
        -0x3621dfb2 -> :sswitch_9d
        -0x3621dfb1 -> :sswitch_94
        -0x2d5a2d1e -> :sswitch_88
        -0x2d5a2d1d -> :sswitch_7b
        -0x266f082 -> :sswitch_6e
        -0x42d1a3 -> :sswitch_61
        0x2382115 -> :sswitch_54
        0x589b15e -> :sswitch_47
    .end sparse-switch

    :pswitch_data_236
    .packed-switch 0x0
        :pswitch_1ea
        :pswitch_1d9
        :pswitch_1c8
        :pswitch_1b7
        :pswitch_1a6
        :pswitch_195
        :pswitch_184
        :pswitch_173
        :pswitch_162
        :pswitch_151
        :pswitch_140
        :pswitch_12f
        :pswitch_11e
        :pswitch_10d
    .end packed-switch
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

    .line 83
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "alpha"

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_d
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "elevation"

    .line 87
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1a
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "rotation"

    .line 90
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_27
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "rotationX"

    .line 93
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_34
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "rotationY"

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_41
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "transformPivotX"

    .line 99
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4e
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_5b

    const-string v0, "transformPivotY"

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_5b
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    const-string v0, "translationX"

    .line 105
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "translationY"

    .line 108
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_75
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "translationZ"

    .line 111
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_82
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8f

    const-string v0, "transitionPathRotate"

    .line 114
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_8f
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "scaleX"

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_9c
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_a9

    const-string v0, "scaleY"

    .line 120
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_a9
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "progress"

    .line 123
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_b6
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e9

    .line 126
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    :cond_e9
    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 77
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 67
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyAttribute:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroid/support/constraint/motion/KeyAttributes$Loader;->read(Landroid/support/constraint/motion/KeyAttributes;Landroid/content/res/TypedArray;)V

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

    .line 133
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 136
    :cond_6
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_19

    .line 137
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_19
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 140
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2c
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 143
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotation"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3f
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_52

    .line 146
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_52
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_65

    .line 149
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rotationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_65
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_78

    .line 152
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_78
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 155
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transformPivotY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_8b
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 158
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_9e
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_b1

    .line 161
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_b1
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 164
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "translationZ"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_c4
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 167
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "transitionPathRotate"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_d7
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_ea

    .line 170
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleX"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_ea
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 173
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scaleY"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_fd
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_110

    .line 176
    iget v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_110
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_149

    .line 179
    iget-object v0, p0, Landroid/support/constraint/motion/KeyAttributes;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_149

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CUSTOM,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_122

    :cond_149
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_160

    goto/16 :goto_e2

    :sswitch_d
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_e2

    :cond_17
    const/16 v1, 0x10

    goto/16 :goto_e2

    :sswitch_1b
    const-string v0, "mTranslationZ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto/16 :goto_e2

    :cond_25
    const/16 v1, 0xf

    goto/16 :goto_e2

    :sswitch_29
    const-string v0, "curveFit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto/16 :goto_e2

    :cond_33
    const/16 v1, 0xe

    goto/16 :goto_e2

    :sswitch_37
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto/16 :goto_e2

    :cond_41
    const/16 v1, 0xd

    goto/16 :goto_e2

    :sswitch_45
    const-string v0, "transitionPathRotate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    goto/16 :goto_e2

    :cond_4f
    const/16 v1, 0xc

    goto/16 :goto_e2

    :sswitch_53
    const-string v0, "elevation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto/16 :goto_e2

    :cond_5d
    const/16 v1, 0xb

    goto/16 :goto_e2

    :sswitch_61
    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto/16 :goto_e2

    :cond_6b
    const/16 v1, 0xa

    goto/16 :goto_e2

    :sswitch_6f
    const-string v0, "scaleY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto/16 :goto_e2

    :cond_79
    const/16 v1, 0x9

    goto/16 :goto_e2

    :sswitch_7d
    const-string v0, "scaleX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_87

    goto/16 :goto_e2

    :cond_87
    const/16 v1, 0x8

    goto/16 :goto_e2

    :sswitch_8b
    const-string v0, "pivotY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    goto :goto_e2

    :cond_94
    const/4 v1, 0x7

    goto :goto_e2

    :sswitch_96
    const-string v0, "pivotX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9f

    goto :goto_e2

    :cond_9f
    const/4 v1, 0x6

    goto :goto_e2

    :sswitch_a1
    const-string v0, "translationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_aa

    goto :goto_e2

    :cond_aa
    const/4 v1, 0x5

    goto :goto_e2

    :sswitch_ac
    const-string v0, "translationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b5

    goto :goto_e2

    :cond_b5
    const/4 v1, 0x4

    goto :goto_e2

    :sswitch_b7
    const-string v0, "rotationY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c0

    goto :goto_e2

    :cond_c0
    const/4 v1, 0x3

    goto :goto_e2

    :sswitch_c2
    const-string v0, "rotationX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_cb

    goto :goto_e2

    :cond_cb
    const/4 v1, 0x2

    goto :goto_e2

    :sswitch_cd
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d6

    goto :goto_e2

    :cond_d6
    const/4 v1, 0x1

    goto :goto_e2

    :sswitch_d8
    const-string v0, "motionProgress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e1

    goto :goto_e2

    :cond_e1
    const/4 v1, 0x0

    :goto_e2
    packed-switch v1, :pswitch_data_1a6

    goto/16 :goto_15f

    .line 315
    :pswitch_e7
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toBoolean(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mVisibility:Z

    goto/16 :goto_15f

    .line 327
    :pswitch_ef
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationZ:F

    goto/16 :goto_15f

    .line 282
    :pswitch_f7
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mCurveFit:I

    goto :goto_15f

    .line 279
    :pswitch_fe
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mAlpha:F

    goto :goto_15f

    .line 318
    :pswitch_105
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionPathRotate:F

    goto :goto_15f

    .line 285
    :pswitch_10c
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mElevation:F

    goto :goto_15f

    .line 291
    :pswitch_113
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotation:F

    goto :goto_15f

    .line 309
    :pswitch_11a
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleY:F

    goto :goto_15f

    .line 306
    :pswitch_121
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mScaleX:F

    goto :goto_15f

    .line 303
    :pswitch_128
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotY:F

    goto :goto_15f

    .line 300
    :pswitch_12f
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mPivotX:F

    goto :goto_15f

    .line 324
    :pswitch_136
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationY:F

    goto :goto_15f

    .line 321
    :pswitch_13d
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTranslationX:F

    goto :goto_15f

    .line 297
    :pswitch_144
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationY:F

    goto :goto_15f

    .line 294
    :pswitch_14b
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mRotationX:F

    goto :goto_15f

    .line 312
    :pswitch_152
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mTransitionEasing:Ljava/lang/String;

    goto :goto_15f

    .line 288
    :pswitch_159
    invoke-virtual {p0, p2}, Landroid/support/constraint/motion/KeyAttributes;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/KeyAttributes;->mProgress:F

    :goto_15f
    return-void

    :sswitch_data_160
    .sparse-switch
        -0x72062ffd -> :sswitch_d8
        -0x6c0d7d20 -> :sswitch_cd
        -0x4a771f66 -> :sswitch_c2
        -0x4a771f65 -> :sswitch_b7
        -0x490b9c39 -> :sswitch_ac
        -0x490b9c38 -> :sswitch_a1
        -0x3ae243aa -> :sswitch_96
        -0x3ae243a9 -> :sswitch_8b
        -0x3621dfb2 -> :sswitch_7d
        -0x3621dfb1 -> :sswitch_6f
        -0x266f082 -> :sswitch_61
        -0x42d1a3 -> :sswitch_53
        0x2382115 -> :sswitch_45
        0x589b15e -> :sswitch_37
        0x2283b8a2 -> :sswitch_29
        0x4e897cd6 -> :sswitch_1b
        0x73b66312 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_159
        :pswitch_152
        :pswitch_14b
        :pswitch_144
        :pswitch_13d
        :pswitch_136
        :pswitch_12f
        :pswitch_128
        :pswitch_121
        :pswitch_11a
        :pswitch_113
        :pswitch_10c
        :pswitch_105
        :pswitch_fe
        :pswitch_f7
        :pswitch_ef
        :pswitch_e7
    .end packed-switch
.end method
