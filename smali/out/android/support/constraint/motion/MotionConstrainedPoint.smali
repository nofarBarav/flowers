.class Landroid/support/constraint/motion/MotionConstrainedPoint;
.super Ljava/lang/Object;
.source "MotionConstrainedPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/constraint/motion/MotionConstrainedPoint;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final PERPENDICULAR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field private alpha:F

.field private applyElevation:Z

.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private elevation:F

.field private height:F

.field private mDrawPath:I

.field private mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

.field mMode:I

.field private mPathRotate:F

.field private mPivotX:F

.field private mPivotY:F

.field private mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field mVisibilityMode:I

.field private position:F

.field private rotation:F

.field private rotationX:F

.field public rotationY:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F

.field private translationZ:F

.field visibility:I

.field private width:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 67
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/constraint/motion/MotionConstrainedPoint;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    const/4 v1, 0x0

    .line 41
    iput v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 43
    iput-boolean v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyElevation:Z

    const/4 v2, 0x0

    .line 44
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    .line 45
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    .line 46
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    .line 47
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    .line 48
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    .line 49
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 50
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    .line 51
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    .line 52
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    .line 53
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    .line 54
    iput v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    .line 56
    iput v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mDrawPath:I

    .line 62
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    .line 63
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    .line 70
    iput v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 150
    iput-object v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mTempValue:[D

    new-array v0, v0, [D

    .line 151
    iput-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mTempDelta:[D

    return-void
.end method

.method private diff(FF)Z
    .registers 6

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1e

    :cond_f
    sub-float/2addr p1, p2

    .line 80
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x358637bd    # 1.0E-6f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    return v1

    .line 78
    :cond_1e
    :goto_1e
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eq p1, p2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/constraint/motion/SplineSet;",
            ">;I)V"
        }
    .end annotation

    .line 254
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 255
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/motion/SplineSet;

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_23c

    goto/16 :goto_d3

    :sswitch_28
    const-string v4, "alpha"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_d3

    :cond_32
    const/16 v3, 0xd

    goto/16 :goto_d3

    :sswitch_36
    const-string v4, "transitionPathRotate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    goto/16 :goto_d3

    :cond_40
    const/16 v3, 0xc

    goto/16 :goto_d3

    :sswitch_44
    const-string v4, "elevation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_d3

    :cond_4e
    const/16 v3, 0xb

    goto/16 :goto_d3

    :sswitch_52
    const-string v4, "rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto/16 :goto_d3

    :cond_5c
    const/16 v3, 0xa

    goto/16 :goto_d3

    :sswitch_60
    const-string v4, "transformPivotY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_d3

    :cond_6a
    const/16 v3, 0x9

    goto/16 :goto_d3

    :sswitch_6e
    const-string v4, "transformPivotX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    goto/16 :goto_d3

    :cond_78
    const/16 v3, 0x8

    goto/16 :goto_d3

    :sswitch_7c
    const-string v4, "scaleY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_85

    goto :goto_d3

    :cond_85
    const/4 v3, 0x7

    goto :goto_d3

    :sswitch_87
    const-string v4, "scaleX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    goto :goto_d3

    :cond_90
    const/4 v3, 0x6

    goto :goto_d3

    :sswitch_92
    const-string v4, "progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9b

    goto :goto_d3

    :cond_9b
    const/4 v3, 0x5

    goto :goto_d3

    :sswitch_9d
    const-string v4, "translationZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a6

    goto :goto_d3

    :cond_a6
    const/4 v3, 0x4

    goto :goto_d3

    :sswitch_a8
    const-string v4, "translationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b1

    goto :goto_d3

    :cond_b1
    const/4 v3, 0x3

    goto :goto_d3

    :sswitch_b3
    const-string v4, "translationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    goto :goto_d3

    :cond_bc
    const/4 v3, 0x2

    goto :goto_d3

    :sswitch_be
    const-string v4, "rotationY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c7

    goto :goto_d3

    :cond_c7
    const/4 v3, 0x1

    goto :goto_d3

    :sswitch_c9
    const-string v4, "rotationX"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    goto :goto_d3

    :cond_d2
    const/4 v3, 0x0

    :goto_d3
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_276

    const-string v3, "CUSTOM"

    .line 303
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "MotionPaths"

    if-eqz v3, :cond_144

    const-string v3, ","

    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    .line 305
    iget-object v5, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 306
    iget-object v5, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintAttribute;

    .line 307
    instance-of v5, v2, Landroid/support/constraint/motion/SplineSet$CustomSet;

    if-eqz v5, :cond_106

    .line 308
    check-cast v2, Landroid/support/constraint/motion/SplineSet$CustomSet;

    invoke-virtual {v2, p2, v3}, Landroid/support/constraint/motion/SplineSet$CustomSet;->setPoint(ILandroid/support/constraint/ConstraintAttribute;)V

    goto/16 :goto_8

    .line 310
    :cond_106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " splineSet not a CustomSet frame = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v3}, Landroid/support/constraint/ConstraintAttribute;->getValueToInterpolate()F

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 317
    :cond_12e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN customName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 320
    :cond_144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN spline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 261
    :pswitch_15a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_163

    goto :goto_165

    :cond_163
    iget v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    :goto_165
    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 282
    :pswitch_16a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_173

    goto :goto_175

    :cond_173
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    :goto_175
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 264
    :pswitch_17a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_183

    goto :goto_185

    :cond_183
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    :goto_185
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 267
    :pswitch_18a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_193

    goto :goto_195

    :cond_193
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    :goto_195
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 279
    :pswitch_19a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1a3

    goto :goto_1a5

    :cond_1a3
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    :goto_1a5
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 276
    :pswitch_1aa
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1b3

    goto :goto_1b5

    :cond_1b3
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    :goto_1b5
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 291
    :pswitch_1ba
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1c3

    goto :goto_1c5

    :cond_1c3
    iget v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    :goto_1c5
    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 288
    :pswitch_1ca
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1d3

    goto :goto_1d5

    :cond_1d3
    iget v4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    :goto_1d5
    invoke-virtual {v2, p2, v4}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 285
    :pswitch_1da
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1e3

    goto :goto_1e5

    :cond_1e3
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    :goto_1e5
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 300
    :pswitch_1ea
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1f3

    goto :goto_1f5

    :cond_1f3
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    :goto_1f5
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 297
    :pswitch_1fa
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_203

    goto :goto_205

    :cond_203
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    :goto_205
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 294
    :pswitch_20a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_213

    goto :goto_215

    :cond_213
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    :goto_215
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 273
    :pswitch_21a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_223

    goto :goto_225

    :cond_223
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    :goto_225
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    .line 270
    :pswitch_22a
    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_233

    goto :goto_235

    :cond_233
    iget v6, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    :goto_235
    invoke-virtual {v2, p2, v6}, Landroid/support/constraint/motion/SplineSet;->setPoint(IF)V

    goto/16 :goto_8

    :cond_23a
    return-void

    nop

    :sswitch_data_23c
    .sparse-switch
        -0x4a771f66 -> :sswitch_c9
        -0x4a771f65 -> :sswitch_be
        -0x490b9c39 -> :sswitch_b3
        -0x490b9c38 -> :sswitch_a8
        -0x490b9c37 -> :sswitch_9d
        -0x3bab3dd3 -> :sswitch_92
        -0x3621dfb2 -> :sswitch_87
        -0x3621dfb1 -> :sswitch_7c
        -0x2d5a2d1e -> :sswitch_6e
        -0x2d5a2d1d -> :sswitch_60
        -0x266f082 -> :sswitch_52
        -0x42d1a3 -> :sswitch_44
        0x2382115 -> :sswitch_36
        0x589b15e -> :sswitch_28
    .end sparse-switch

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_22a
        :pswitch_21a
        :pswitch_20a
        :pswitch_1fa
        :pswitch_1ea
        :pswitch_1da
        :pswitch_1ca
        :pswitch_1ba
        :pswitch_1aa
        :pswitch_19a
        :pswitch_18a
        :pswitch_17a
        :pswitch_16a
        :pswitch_15a
    .end packed-switch
.end method

.method public applyParameters(Landroid/support/constraint/ConstraintSet$Constraint;)V
    .registers 7

    .line 223
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->mVisibilityMode:I

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    .line 224
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    .line 225
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->visibility:I

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    :cond_18
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->alpha:F

    :goto_1c
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    .line 227
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget-boolean v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->applyElevation:Z

    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 228
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->elevation:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    .line 229
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotation:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    .line 230
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotationX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    .line 231
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->rotationY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    .line 232
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->scaleX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    .line 233
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->scaleY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    .line 234
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    .line 235
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->transformPivotY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    .line 236
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationX:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    .line 237
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationY:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    .line 238
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transform:Landroid/support/constraint/ConstraintSet$Transform;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Transform;->translationZ:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    .line 240
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

    .line 241
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mPathRotate:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    .line 242
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mDrawPath:I

    .line 243
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    .line 244
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8c
    :goto_8c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    iget-object v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintAttribute;

    .line 247
    invoke-virtual {v2}, Landroid/support/constraint/ConstraintAttribute;->getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_8c

    .line 248
    iget-object v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_ae
    return-void
.end method

.method public applyParameters(Landroid/view/View;)V
    .registers 4

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    :goto_12
    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyElevation:Z

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_23

    .line 206
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    .line 208
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getPivotX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getPivotY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_63

    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p1

    iput p1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    :cond_63
    return-void
.end method

.method public compareTo(Landroid/support/constraint/motion/MotionConstrainedPoint;)I
    .registers 3

    .line 197
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    iget p1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 36
    check-cast p1, Landroid/support/constraint/motion/MotionConstrainedPoint;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->compareTo(Landroid/support/constraint/motion/MotionConstrainedPoint;)I

    move-result p1

    return p1
.end method

.method different(Landroid/support/constraint/motion/MotionConstrainedPoint;Ljava/util/HashSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/constraint/motion/MotionConstrainedPoint;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    const-string v1, "alpha"

    if-eqz v0, :cond_f

    .line 91
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_f
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    invoke-direct {p0, v0, v2}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "elevation"

    .line 94
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_1e
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->visibility:I

    if-eq v0, v2, :cond_2f

    iget v3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v3, :cond_2f

    if-eqz v0, :cond_2c

    if-nez v2, :cond_2f

    .line 100
    :cond_2c
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_2f
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "rotation"

    .line 103
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3e
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget v0, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_4e
    const-string v0, "transitionPathRotate"

    .line 106
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_53
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_63

    iget v0, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_68

    :cond_63
    const-string v0, "progress"

    .line 109
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_68
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "rotationX"

    .line 112
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_77
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "rotationY"

    .line 115
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_86
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "transformPivotX"

    .line 118
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_95
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "transformPivotY"

    .line 121
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_a4
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "scaleX"

    .line 124
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_b3
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_c2

    const-string v0, "scaleY"

    .line 127
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_c2
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "translationX"

    .line 130
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_d1
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    iget v1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v0

    if-eqz v0, :cond_e0

    const-string v0, "translationY"

    .line 133
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_e0
    iget v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    iget p1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    invoke-direct {p0, v0, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result p1

    if-eqz p1, :cond_ef

    const-string p1, "translationZ"

    .line 136
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_ef
    return-void
.end method

.method different(Landroid/support/constraint/motion/MotionConstrainedPoint;[Z[Ljava/lang/String;)V
    .registers 7

    const/4 p3, 0x0

    .line 142
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x1

    .line 143
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x2

    .line 144
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x3

    .line 145
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    iget v2, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x4

    .line 146
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    iget p1, p1, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    invoke-direct {p0, v1, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->diff(FF)Z

    move-result p1

    or-int/2addr p1, v0

    aput-boolean p1, p2, p3

    return-void
.end method

.method fillStandard([D[I)V
    .registers 10

    const/16 v0, 0x12

    new-array v1, v0, [F

    .line 154
    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->position:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->alpha:F

    const/4 v4, 0x5

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->elevation:F

    const/4 v4, 0x6

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotation:F

    const/4 v4, 0x7

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationX:F

    const/16 v4, 0x8

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->rotationY:F

    const/16 v4, 0x9

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleX:F

    const/16 v4, 0xa

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->scaleY:F

    const/16 v4, 0xb

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotX:F

    const/16 v4, 0xc

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPivotY:F

    const/16 v4, 0xd

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationX:F

    const/16 v4, 0xe

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationY:F

    const/16 v4, 0xf

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->translationZ:F

    const/16 v4, 0x10

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->mPathRotate:F

    const/16 v4, 0x11

    aput v2, v1, v4

    const/4 v2, 0x0

    .line 157
    :goto_69
    array-length v4, p2

    if-ge v3, v4, :cond_7d

    .line 158
    aget v4, p2, v3

    if-ge v4, v0, :cond_7a

    add-int/lit8 v4, v2, 0x1

    .line 159
    aget v5, p2, v3

    aget v5, v1, v5

    float-to-double v5, v5

    aput-wide v5, p1, v2

    move v2, v4

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    :cond_7d
    return-void
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .registers 9

    .line 173
    iget-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintAttribute;

    .line 174
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 175
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->getValueToInterpolate()F

    move-result p1

    float-to-double v2, p1

    aput-wide v2, p2, p3

    return v1

    .line 178
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    .line 179
    new-array v1, v0, [F

    .line 180
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 p1, 0x0

    :goto_21
    if-ge p1, v0, :cond_2e

    add-int/lit8 v2, p3, 0x1

    .line 182
    aget v3, v1, p1

    float-to-double v3, v3

    aput-wide v3, p2, p3

    add-int/lit8 p1, p1, 0x1

    move p3, v2

    goto :goto_21

    :cond_2e
    return v0
.end method

.method getCustomDataCount(Ljava/lang/String;)I
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintAttribute;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result p1

    return p1
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method setBounds(FFFF)V
    .registers 5

    .line 189
    iput p1, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->x:F

    .line 190
    iput p2, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->y:F

    .line 191
    iput p3, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->width:F

    .line 192
    iput p4, p0, Landroid/support/constraint/motion/MotionConstrainedPoint;->height:F

    return-void
.end method

.method public setState(Landroid/support/constraint/solver/widgets/ConstraintWidget;Landroid/support/constraint/ConstraintSet;I)V
    .registers 7

    .line 333
    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    .line 334
    invoke-virtual {p2, p3}, Landroid/support/constraint/ConstraintSet;->getParameters(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyParameters(Landroid/support/constraint/ConstraintSet$Constraint;)V

    return-void
.end method

.method public setState(Landroid/view/View;)V
    .registers 6

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/motion/MotionConstrainedPoint;->setBounds(FFFF)V

    .line 329
    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionConstrainedPoint;->applyParameters(Landroid/view/View;)V

    return-void
.end method
