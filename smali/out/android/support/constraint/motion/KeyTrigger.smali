.class public Landroid/support/constraint/motion/KeyTrigger;
.super Landroid/support/constraint/motion/Key;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/KeyTrigger$Loader;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:I = 0x5

.field static final NAME:Ljava/lang/String; = "KeyTrigger"

.field private static final TAG:Ljava/lang/String; = "KeyTrigger"


# instance fields
.field mCollisionRect:Landroid/graphics/RectF;

.field private mCross:Ljava/lang/String;

.field private mCurveFit:I

.field private mFireCross:Ljava/lang/reflect/Method;

.field private mFireCrossReset:Z

.field private mFireLastPos:F

.field private mFireNegativeCross:Ljava/lang/reflect/Method;

.field private mFireNegativeReset:Z

.field private mFirePositiveCross:Ljava/lang/reflect/Method;

.field private mFirePositiveReset:Z

.field private mFireThreshold:F

.field private mNegativeCross:Ljava/lang/String;

.field private mPositiveCross:Ljava/lang/String;

.field private mPostLayout:Z

.field mTargetRect:Landroid/graphics/RectF;

.field private mTriggerCollisionId:I

.field private mTriggerCollisionView:Landroid/view/View;

.field private mTriggerID:I

.field private mTriggerReceiver:I

.field mTriggerSlack:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/support/constraint/motion/Key;-><init>()V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCurveFit:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    .line 46
    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    .line 47
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    .line 49
    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    .line 50
    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    .line 51
    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    const v0, 0x3dcccccd    # 0.1f

    .line 52
    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    .line 54
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    .line 55
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 56
    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    const/4 v0, 0x5

    .line 70
    iput v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mType:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCustomConstraints:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$002(Landroid/support/constraint/motion/KeyTrigger;F)F
    .registers 2

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    return p1
.end method

.method static synthetic access$102(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/support/constraint/motion/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 41
    iput-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/constraint/motion/KeyTrigger;)I
    .registers 1

    .line 41
    iget p0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    return p0
.end method

.method static synthetic access$402(Landroid/support/constraint/motion/KeyTrigger;I)I
    .registers 2

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    return p1
.end method

.method static synthetic access$500(Landroid/support/constraint/motion/KeyTrigger;)I
    .registers 1

    .line 41
    iget p0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    return p0
.end method

.method static synthetic access$502(Landroid/support/constraint/motion/KeyTrigger;I)I
    .registers 2

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    return p1
.end method

.method static synthetic access$600(Landroid/support/constraint/motion/KeyTrigger;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    return p0
.end method

.method static synthetic access$602(Landroid/support/constraint/motion/KeyTrigger;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    return p1
.end method

.method static synthetic access$700(Landroid/support/constraint/motion/KeyTrigger;)I
    .registers 1

    .line 41
    iget p0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    return p0
.end method

.method static synthetic access$702(Landroid/support/constraint/motion/KeyTrigger;I)I
    .registers 2

    .line 41
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    return p1
.end method

.method private setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V
    .registers 5

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    if-eqz p3, :cond_25

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_25
    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public conditionallyFire(FLandroid/view/View;)V
    .registers 13

    .line 116
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    sget v1, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_62

    .line 117
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    if-nez v0, :cond_1a

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    .line 121
    :cond_1a
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerCollisionView:Landroid/view/View;

    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v0, v1, v4}, Landroid/support/constraint/motion/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 122
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    iget-boolean v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mPostLayout:Z

    invoke-direct {p0, v0, p2, v1}, Landroid/support/constraint/motion/KeyTrigger;->setUpRect(Landroid/graphics/RectF;Landroid/view/View;Z)V

    .line 123
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCollisionRect:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 126
    iget-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    if-eqz v0, :cond_3c

    .line 128
    iput-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 130
    :goto_3d
    iget-boolean v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v1, :cond_45

    .line 132
    iput-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    .line 134
    :goto_46
    iput-boolean v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    move v2, v1

    const/4 v1, 0x0

    goto/16 :goto_e0

    .line 136
    :cond_4c
    iget-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    if-nez v0, :cond_54

    .line 138
    iput-boolean v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    const/4 v0, 0x1

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    .line 140
    :goto_55
    iget-boolean v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v1, :cond_5d

    .line 142
    iput-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 144
    :goto_5e
    iput-boolean v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    goto/16 :goto_df

    .line 150
    :cond_62
    iget-boolean v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    .line 152
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v4, p1, v0

    .line 153
    iget v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v5, v0

    mul-float v4, v4, v5

    cmpg-float v0, v4, v1

    if-gez v0, :cond_88

    .line 157
    iput-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    const/4 v0, 0x1

    goto :goto_89

    .line 160
    :cond_78
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_88

    .line 161
    iput-boolean v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCrossReset:Z

    :cond_88
    const/4 v0, 0x0

    .line 166
    :goto_89
    iget-boolean v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    if-eqz v4, :cond_a2

    .line 167
    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v5, p1, v4

    .line 168
    iget v6, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v6, v4

    mul-float v6, v6, v5

    cmpg-float v4, v6, v1

    if-gez v4, :cond_b2

    cmpg-float v4, v5, v1

    if-gez v4, :cond_b2

    .line 171
    iput-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    const/4 v4, 0x1

    goto :goto_b3

    .line 174
    :cond_a2
    iget v4, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b2

    .line 175
    iput-boolean v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeReset:Z

    :cond_b2
    const/4 v4, 0x0

    .line 179
    :goto_b3
    iget-boolean v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    if-eqz v5, :cond_ce

    .line 180
    iget v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v6, p1, v5

    .line 181
    iget v7, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    sub-float/2addr v7, v5

    mul-float v7, v7, v6

    cmpg-float v5, v7, v1

    if-gez v5, :cond_cb

    cmpl-float v1, v6, v1

    if-lez v1, :cond_cb

    .line 184
    iput-boolean v3, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    goto :goto_cc

    :cond_cb
    const/4 v2, 0x0

    :goto_cc
    move v1, v4

    goto :goto_e0

    .line 187
    :cond_ce
    iget v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireThreshold:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerSlack:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_de

    .line 188
    iput-boolean v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveReset:Z

    :cond_de
    move v1, v4

    :goto_df
    const/4 v2, 0x0

    .line 192
    :goto_e0
    iput p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireLastPos:F

    if-nez v1, :cond_e8

    if-nez v0, :cond_e8

    if-eqz v2, :cond_f3

    .line 195
    :cond_e8
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/support/constraint/motion/MotionLayout;

    iget v5, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerID:I

    invoke-virtual {v4, v5, v2, p1}, Landroid/support/constraint/motion/MotionLayout;->fireTrigger(IZF)V

    .line 197
    :cond_f3
    iget p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    sget v4, Landroid/support/constraint/motion/KeyTrigger;->UNSET:I

    if-ne p1, v4, :cond_fa

    goto :goto_106

    :cond_fa
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/motion/MotionLayout;

    iget p2, p0, Landroid/support/constraint/motion/KeyTrigger;->mTriggerReceiver:I

    invoke-virtual {p1, p2}, Landroid/support/constraint/motion/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :goto_106
    const-string p1, "Could not find method \""

    const-string v4, "Exception in call \""

    const-string v5, " "

    const-string v6, "\"on class "

    const-string v7, "KeyTrigger"

    if-eqz v1, :cond_189

    .line 199
    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    if-eqz v1, :cond_189

    .line 200
    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;

    if-nez v1, :cond_155

    .line 202
    :try_start_11a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v8, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;
    :try_end_128
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11a .. :try_end_128} :catch_129

    goto :goto_155

    .line 204
    :catch_129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_155
    :goto_155
    :try_start_155
    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireNegativeCross:Ljava/lang/reflect/Method;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_15c} :catch_15d

    goto :goto_189

    .line 211
    :catch_15d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/support/constraint/motion/KeyTrigger;->mNegativeCross:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_189
    :goto_189
    if-eqz v2, :cond_202

    .line 215
    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    if-eqz v1, :cond_202

    .line 216
    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1ce

    .line 218
    :try_start_193
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;
    :try_end_1a1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_193 .. :try_end_1a1} :catch_1a2

    goto :goto_1ce

    .line 220
    :catch_1a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1ce
    :goto_1ce
    :try_start_1ce
    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFirePositiveCross:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d5
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1d5} :catch_1d6

    goto :goto_202

    .line 227
    :catch_1d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/constraint/motion/KeyTrigger;->mPositiveCross:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_202
    :goto_202
    if-eqz v0, :cond_27b

    .line 231
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    if-eqz v0, :cond_27b

    .line 232
    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;

    if-nez v0, :cond_247

    .line 234
    :try_start_20c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;
    :try_end_21a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_20c .. :try_end_21a} :catch_21b

    goto :goto_247

    .line 236
    :catch_21b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_247
    :goto_247
    :try_start_247
    iget-object p1, p0, Landroid/support/constraint/motion/KeyTrigger;->mFireCross:Ljava/lang/reflect/Method;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_24e} :catch_24f

    goto :goto_27b

    .line 243
    :catch_24f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCross:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/support/constraint/motion/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27b
    :goto_27b
    return-void
.end method

.method public getAttributeNames(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method getCurveFit()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/support/constraint/motion/KeyTrigger;->mCurveFit:I

    return v0
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 76
    sget-object v0, Landroid/support/constraint/R$styleable;->KeyTrigger:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 77
    invoke-static {p0, p2, p1}, Landroid/support/constraint/motion/KeyTrigger$Loader;->read(Landroid/support/constraint/motion/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method
