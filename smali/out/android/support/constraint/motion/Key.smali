.class public abstract Landroid/support/constraint/motion/Key;
.super Ljava/lang/Object;
.source "Key.java"


# static fields
.field static final ALPHA:Ljava/lang/String; = "alpha"

.field static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field static final ELEVATION:Ljava/lang/String; = "elevation"

.field static final PIVOT_X:Ljava/lang/String; = "transformPivotX"

.field static final PIVOT_Y:Ljava/lang/String; = "transformPivotY"

.field static final PROGRESS:Ljava/lang/String; = "progress"

.field static final ROTATION:Ljava/lang/String; = "rotation"

.field static final ROTATION_X:Ljava/lang/String; = "rotationX"

.field static final ROTATION_Y:Ljava/lang/String; = "rotationY"

.field static final SCALE_X:Ljava/lang/String; = "scaleX"

.field static final SCALE_Y:Ljava/lang/String; = "scaleY"

.field static final TRANSITION_PATH_ROTATE:Ljava/lang/String; = "transitionPathRotate"

.field static final TRANSLATION_X:Ljava/lang/String; = "translationX"

.field static final TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field static final TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static UNSET:I = -0x1

.field static final WAVE_OFFSET:Ljava/lang/String; = "waveOffset"

.field static final WAVE_PERIOD:Ljava/lang/String; = "wavePeriod"

.field static final WAVE_VARIES_BY:Ljava/lang/String; = "waveVariesBy"


# instance fields
.field mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mFramePosition:I

.field mTargetId:I

.field mTargetString:Ljava/lang/String;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget v0, Landroid/support/constraint/motion/Key;->UNSET:I

    iput v0, p0, Landroid/support/constraint/motion/Key;->mFramePosition:I

    .line 35
    iput v0, p0, Landroid/support/constraint/motion/Key;->mTargetId:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroid/support/constraint/motion/Key;->mTargetString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addValues(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract getAttributeNames(Ljava/util/HashSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract load(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method matches(Ljava/lang/String;)Z
    .registers 3

    .line 61
    iget-object v0, p0, Landroid/support/constraint/motion/Key;->mTargetString:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-nez p1, :cond_7

    goto :goto_c

    .line 62
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_c
    :goto_c
    const/4 p1, 0x0

    return p1
.end method

.method public setInterpolation(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract setValue(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method toBoolean(Ljava/lang/Object;)Z
    .registers 3

    .line 107
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_13

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_13
    return p1
.end method

.method toFloat(Ljava/lang/Object;)F
    .registers 3

    .line 87
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_13

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    :goto_13
    return p1
.end method

.method toInt(Ljava/lang/Object;)I
    .registers 3

    .line 97
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_13

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_13
    return p1
.end method
