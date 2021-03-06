.class Landroid/support/constraint/motion/MotionPaths;
.super Ljava/lang/Object;
.source "MotionPaths.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/support/constraint/motion/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x2

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x3

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
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

.field height:F

.field mDrawPath:I

.field mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 52
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/constraint/motion/MotionPaths;->names:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroid/support/constraint/motion/MotionPaths;->mPathRotate:F

    .line 62
    iput v1, p0, Landroid/support/constraint/motion/MotionPaths;->mProgress:F

    .line 63
    sget v1, Landroid/support/constraint/motion/Key;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/MotionPaths;->mPathMotionArc:I

    .line 65
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 66
    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 308
    iput-object v1, p0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    .line 309
    iput-object v0, p0, Landroid/support/constraint/motion/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V
    .registers 8

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroid/support/constraint/motion/MotionPaths;->mPathRotate:F

    .line 62
    iput v1, p0, Landroid/support/constraint/motion/MotionPaths;->mProgress:F

    .line 63
    sget v1, Landroid/support/constraint/motion/Key;->UNSET:I

    iput v1, p0, Landroid/support/constraint/motion/MotionPaths;->mPathMotionArc:I

    .line 65
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/constraint/motion/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 66
    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 308
    iput-object v1, p0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    .line 309
    iput-object v0, p0, Landroid/support/constraint/motion/MotionPaths;->mTempDelta:[D

    .line 125
    iget v0, p3, Landroid/support/constraint/motion/KeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    .line 134
    invoke-virtual {p0, p3, p4, p5}, Landroid/support/constraint/motion/MotionPaths;->initCartesian(Landroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V

    return-void

    .line 127
    :cond_2f
    invoke-virtual/range {p0 .. p5}, Landroid/support/constraint/motion/MotionPaths;->initScreen(IILandroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V

    return-void

    .line 130
    :cond_33
    invoke-virtual {p0, p3, p4, p5}, Landroid/support/constraint/motion/MotionPaths;->initPath(Landroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V

    return-void
.end method

.method private diff(FF)Z
    .registers 6

    .line 236
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

    .line 239
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

    .line 237
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

.method private static final xRotate(FFFFFF)F
    .registers 6

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float p4, p4, p1

    mul-float p5, p5, p0

    sub-float/2addr p4, p5

    add-float/2addr p4, p2

    return p4
.end method

.method private static final yRotate(FFFFFF)F
    .registers 6

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float p4, p4, p0

    mul-float p5, p5, p1

    add-float/2addr p4, p5

    add-float/2addr p4, p3

    return p4
.end method


# virtual methods
.method public applyParameters(Landroid/support/constraint/ConstraintSet$Constraint;)V
    .registers 7

    .line 681
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget-object v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/motion/MotionPaths;->mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

    .line 682
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mPathMotionArc:I

    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mPathMotionArc:I

    .line 683
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mPathRotate:F

    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mPathRotate:F

    .line 684
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->motion:Landroid/support/constraint/ConstraintSet$Motion;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$Motion;->mDrawPath:I

    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mDrawPath:I

    .line 685
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->propertySet:Landroid/support/constraint/ConstraintSet$PropertySet;

    iget v0, v0, Landroid/support/constraint/ConstraintSet$PropertySet;->mProgress:F

    iput v0, p0, Landroid/support/constraint/motion/MotionPaths;->mProgress:F

    .line 686
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 688
    iget-object v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintAttribute;

    .line 689
    invoke-virtual {v2}, Landroid/support/constraint/ConstraintAttribute;->getType()Landroid/support/constraint/ConstraintAttribute$AttributeType;

    move-result-object v3

    sget-object v4, Landroid/support/constraint/ConstraintAttribute$AttributeType;->STRING_TYPE:Landroid/support/constraint/ConstraintAttribute$AttributeType;

    if-eq v3, v4, :cond_2c

    .line 690
    iget-object v3, p0, Landroid/support/constraint/motion/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_4e
    return-void
.end method

.method public compareTo(Landroid/support/constraint/motion/MotionPaths;)I
    .registers 3

    .line 676
    iget v0, p0, Landroid/support/constraint/motion/MotionPaths;->position:F

    iget p1, p1, Landroid/support/constraint/motion/MotionPaths;->position:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 38
    check-cast p1, Landroid/support/constraint/motion/MotionPaths;

    invoke-virtual {p0, p1}, Landroid/support/constraint/motion/MotionPaths;->compareTo(Landroid/support/constraint/motion/MotionPaths;)I

    move-result p1

    return p1
.end method

.method different(Landroid/support/constraint/motion/MotionPaths;[Z[Ljava/lang/String;Z)V
    .registers 8

    const/4 p3, 0x0

    .line 244
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionPaths;->position:F

    iget v2, p1, Landroid/support/constraint/motion/MotionPaths;->position:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x1

    .line 245
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionPaths;->x:F

    iget v2, p1, Landroid/support/constraint/motion/MotionPaths;->x:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr v1, p4

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x2

    .line 246
    aget-boolean v0, p2, p3

    iget v1, p0, Landroid/support/constraint/motion/MotionPaths;->y:F

    iget v2, p1, Landroid/support/constraint/motion/MotionPaths;->y:F

    invoke-direct {p0, v1, v2}, Landroid/support/constraint/motion/MotionPaths;->diff(FF)Z

    move-result v1

    or-int/2addr p4, v1

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x3

    .line 247
    aget-boolean p4, p2, p3

    iget v0, p0, Landroid/support/constraint/motion/MotionPaths;->width:F

    iget v1, p1, Landroid/support/constraint/motion/MotionPaths;->width:F

    invoke-direct {p0, v0, v1}, Landroid/support/constraint/motion/MotionPaths;->diff(FF)Z

    move-result v0

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x4

    .line 248
    aget-boolean p4, p2, p3

    iget v0, p0, Landroid/support/constraint/motion/MotionPaths;->height:F

    iget p1, p1, Landroid/support/constraint/motion/MotionPaths;->height:F

    invoke-direct {p0, v0, p1}, Landroid/support/constraint/motion/MotionPaths;->diff(FF)Z

    move-result p1

    or-int/2addr p1, p4

    aput-boolean p1, p2, p3

    return-void
.end method

.method fillStandard([D[I)V
    .registers 10

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 634
    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->position:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->x:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->y:F

    const/4 v4, 0x2

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->width:F

    const/4 v4, 0x3

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->height:F

    const/4 v4, 0x4

    aput v2, v1, v4

    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->mPathRotate:F

    const/4 v4, 0x5

    aput v2, v1, v4

    const/4 v2, 0x0

    .line 636
    :goto_22
    array-length v4, p2

    if-ge v3, v4, :cond_36

    .line 637
    aget v4, p2, v3

    if-ge v4, v0, :cond_33

    add-int/lit8 v4, v2, 0x1

    .line 638
    aget v5, p2, v3

    aget v5, v1, v5

    float-to-double v5, v5

    aput-wide v5, p1, v2

    move v2, v4

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_36
    return-void
.end method

.method getBounds([I[D[FI)V
    .registers 11

    .line 283
    iget v0, p0, Landroid/support/constraint/motion/MotionPaths;->width:F

    .line 284
    iget v1, p0, Landroid/support/constraint/motion/MotionPaths;->height:F

    const/4 v2, 0x0

    .line 286
    :goto_5
    array-length v3, p1

    if-ge v2, v3, :cond_1a

    .line 287
    aget-wide v3, p2, v2

    double-to-float v3, v3

    .line 289
    aget v4, p1, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_16

    const/4 v5, 0x4

    if-eq v4, v5, :cond_14

    goto :goto_17

    :cond_14
    move v1, v3

    goto :goto_17

    :cond_16
    move v0, v3

    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 304
    :cond_1a
    aput v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    .line 305
    aput v1, p3, p4

    return-void
.end method

.method getCenter([I[D[FI)V
    .registers 14

    .line 253
    iget v0, p0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 254
    iget v1, p0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 255
    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->width:F

    .line 256
    iget v3, p0, Landroid/support/constraint/motion/MotionPaths;->height:F

    const/4 v4, 0x0

    .line 258
    :goto_9
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_28

    .line 259
    aget-wide v7, p2, v4

    double-to-float v5, v7

    .line 261
    aget v7, p1, v4

    if-eq v7, v6, :cond_24

    const/4 v6, 0x2

    if-eq v7, v6, :cond_22

    const/4 v6, 0x3

    if-eq v7, v6, :cond_20

    const/4 v6, 0x4

    if-eq v7, v6, :cond_1e

    goto :goto_25

    :cond_1e
    move v3, v5

    goto :goto_25

    :cond_20
    move v2, v5

    goto :goto_25

    :cond_22
    move v1, v5

    goto :goto_25

    :cond_24
    move v0, v5

    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_28
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    const/4 p2, 0x0

    add-float/2addr v0, p2

    .line 276
    aput v0, p3, p4

    add-int/2addr p4, v6

    div-float/2addr v3, p1

    add-float/2addr v1, v3

    add-float/2addr v1, p2

    .line 277
    aput v1, p3, p4

    return-void
.end method

.method getCustomData(Ljava/lang/String;[DI)I
    .registers 9

    .line 652
    iget-object v0, p0, Landroid/support/constraint/motion/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintAttribute;

    .line 653
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 654
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->getValueToInterpolate()F

    move-result p1

    float-to-double v2, p1

    aput-wide v2, p2, p3

    return v1

    .line 657
    :cond_17
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result v0

    .line 658
    new-array v1, v0, [F

    .line 659
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintAttribute;->getValuesToInterpolate([F)V

    const/4 p1, 0x0

    :goto_21
    if-ge p1, v0, :cond_2e

    add-int/lit8 v2, p3, 0x1

    .line 661
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

    .line 648
    iget-object v0, p0, Landroid/support/constraint/motion/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintAttribute;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintAttribute;->noOfInterpValues()I

    move-result p1

    return p1
.end method

.method getRect([I[D[FI)V
    .registers 13

    .line 432
    iget v0, p0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 433
    iget v1, p0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 434
    iget v2, p0, Landroid/support/constraint/motion/MotionPaths;->width:F

    .line 435
    iget v3, p0, Landroid/support/constraint/motion/MotionPaths;->height:F

    const/4 v4, 0x0

    .line 450
    :goto_9
    array-length v5, p1

    if-ge v4, v5, :cond_28

    .line 451
    aget-wide v5, p2, v4

    double-to-float v5, v5

    .line 453
    aget v6, p1, v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_24

    const/4 v7, 0x2

    if-eq v6, v7, :cond_22

    const/4 v7, 0x3

    if-eq v6, v7, :cond_20

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1e

    goto :goto_25

    :cond_1e
    move v3, v5

    goto :goto_25

    :cond_20
    move v2, v5

    goto :goto_25

    :cond_22
    move v1, v5

    goto :goto_25

    :cond_24
    move v0, v5

    :goto_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_28
    add-float/2addr v2, v0

    add-float/2addr v3, v1

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 486
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 489
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    const/4 p1, 0x0

    add-float p2, v0, p1

    add-float v4, v1, p1

    add-float v5, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    add-float v6, v3, p1

    add-float/2addr v0, p1

    add-float/2addr v3, p1

    add-int/lit8 p1, p4, 0x1

    .line 537
    aput p2, p3, p4

    add-int/lit8 p2, p1, 0x1

    .line 538
    aput v4, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 539
    aput v5, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 540
    aput v1, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 541
    aput v2, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 542
    aput v6, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 543
    aput v0, p3, p2

    .line 544
    aput v3, p3, p1

    return-void
.end method

.method hasCustomData(Ljava/lang/String;)Z
    .registers 3

    .line 644
    iget-object v0, p0, Landroid/support/constraint/motion/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method initCartesian(Landroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 80
    iget v4, v1, Landroid/support/constraint/motion/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 82
    iput v4, v0, Landroid/support/constraint/motion/MotionPaths;->time:F

    .line 84
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroid/support/constraint/motion/MotionPaths;->mDrawPath:I

    .line 85
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v4

    goto :goto_20

    :cond_1e
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    .line 86
    :goto_20
    iget v6, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v6, v4

    goto :goto_2c

    :cond_2a
    iget v6, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    .line 87
    :goto_2c
    iget v7, v3, Landroid/support/constraint/motion/MotionPaths;->width:F

    iget v8, v2, Landroid/support/constraint/motion/MotionPaths;->width:F

    sub-float v9, v7, v8

    .line 88
    iget v10, v3, Landroid/support/constraint/motion/MotionPaths;->height:F

    iget v11, v2, Landroid/support/constraint/motion/MotionPaths;->height:F

    sub-float v12, v10, v11

    .line 90
    iget v13, v0, Landroid/support/constraint/motion/MotionPaths;->time:F

    iput v13, v0, Landroid/support/constraint/motion/MotionPaths;->position:F

    .line 94
    iget v13, v2, Landroid/support/constraint/motion/MotionPaths;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v8, v14

    add-float/2addr v15, v13

    .line 95
    iget v1, v2, Landroid/support/constraint/motion/MotionPaths;->y:F

    div-float v16, v11, v14

    add-float v16, v1, v16

    .line 96
    iget v2, v3, Landroid/support/constraint/motion/MotionPaths;->x:F

    div-float/2addr v7, v14

    add-float/2addr v2, v7

    .line 97
    iget v3, v3, Landroid/support/constraint/motion/MotionPaths;->y:F

    div-float/2addr v10, v14

    add-float/2addr v3, v10

    sub-float/2addr v2, v15

    sub-float v3, v3, v16

    mul-float v7, v2, v4

    add-float/2addr v13, v7

    mul-float v9, v9, v5

    div-float v5, v9, v14

    sub-float/2addr v13, v5

    float-to-int v7, v13

    int-to-float v7, v7

    .line 100
    iput v7, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    mul-float v7, v3, v4

    add-float/2addr v1, v7

    mul-float v12, v12, v6

    div-float v6, v12, v14

    sub-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v1, v1

    .line 101
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    .line 102
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->width:F

    add-float/2addr v11, v12

    float-to-int v1, v11

    int-to-float v1, v1

    .line 103
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->height:F

    move-object/from16 v1, p1

    .line 105
    iget v7, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_82

    move v7, v4

    goto :goto_84

    :cond_82
    iget v7, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    .line 106
    :goto_84
    iget v8, v1, Landroid/support/constraint/motion/KeyPosition;->mAltPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_8f

    const/4 v8, 0x0

    goto :goto_91

    :cond_8f
    iget v8, v1, Landroid/support/constraint/motion/KeyPosition;->mAltPercentY:F

    .line 107
    :goto_91
    iget v10, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_9a

    goto :goto_9c

    :cond_9a
    iget v4, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    .line 108
    :goto_9c
    iget v10, v1, Landroid/support/constraint/motion/KeyPosition;->mAltPercentX:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_a5

    goto :goto_a7

    :cond_a5
    iget v9, v1, Landroid/support/constraint/motion/KeyPosition;->mAltPercentX:F

    :goto_a7
    const/4 v10, 0x2

    .line 109
    iput v10, v0, Landroid/support/constraint/motion/MotionPaths;->mMode:I

    move-object/from16 v10, p2

    .line 110
    iget v11, v10, Landroid/support/constraint/motion/MotionPaths;->x:F

    mul-float v7, v7, v2

    add-float/2addr v11, v7

    mul-float v9, v9, v3

    add-float/2addr v11, v9

    sub-float/2addr v11, v5

    float-to-int v5, v11

    int-to-float v5, v5

    iput v5, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 111
    iget v5, v10, Landroid/support/constraint/motion/MotionPaths;->y:F

    mul-float v2, v2, v8

    add-float/2addr v5, v2

    mul-float v3, v3, v4

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    float-to-int v2, v5

    int-to-float v2, v2

    iput v2, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 113
    iget-object v2, v1, Landroid/support/constraint/motion/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroid/support/constraint/motion/MotionPaths;->mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

    .line 114
    iget v1, v1, Landroid/support/constraint/motion/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method initPath(Landroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 182
    iget v4, v1, Landroid/support/constraint/motion/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 184
    iput v4, v0, Landroid/support/constraint/motion/MotionPaths;->time:F

    .line 186
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroid/support/constraint/motion/MotionPaths;->mDrawPath:I

    .line 187
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v4

    goto :goto_20

    :cond_1e
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    .line 188
    :goto_20
    iget v6, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v6, v4

    goto :goto_2c

    :cond_2a
    iget v6, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    .line 190
    :goto_2c
    iget v7, v3, Landroid/support/constraint/motion/MotionPaths;->width:F

    iget v8, v2, Landroid/support/constraint/motion/MotionPaths;->width:F

    sub-float/2addr v7, v8

    .line 191
    iget v8, v3, Landroid/support/constraint/motion/MotionPaths;->height:F

    iget v9, v2, Landroid/support/constraint/motion/MotionPaths;->height:F

    sub-float/2addr v8, v9

    .line 193
    iget v9, v0, Landroid/support/constraint/motion/MotionPaths;->time:F

    iput v9, v0, Landroid/support/constraint/motion/MotionPaths;->position:F

    .line 195
    iget v9, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_43

    goto :goto_45

    :cond_43
    iget v4, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    .line 197
    :goto_45
    iget v9, v2, Landroid/support/constraint/motion/MotionPaths;->x:F

    iget v10, v2, Landroid/support/constraint/motion/MotionPaths;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v12, v10, v11

    add-float/2addr v12, v9

    .line 198
    iget v13, v2, Landroid/support/constraint/motion/MotionPaths;->y:F

    iget v14, v2, Landroid/support/constraint/motion/MotionPaths;->height:F

    div-float v15, v14, v11

    add-float/2addr v15, v13

    .line 199
    iget v2, v3, Landroid/support/constraint/motion/MotionPaths;->x:F

    iget v1, v3, Landroid/support/constraint/motion/MotionPaths;->width:F

    div-float/2addr v1, v11

    add-float/2addr v2, v1

    .line 200
    iget v1, v3, Landroid/support/constraint/motion/MotionPaths;->y:F

    iget v3, v3, Landroid/support/constraint/motion/MotionPaths;->height:F

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    sub-float/2addr v2, v12

    sub-float/2addr v1, v15

    mul-float v3, v2, v4

    add-float/2addr v9, v3

    mul-float v7, v7, v5

    div-float v5, v7, v11

    sub-float/2addr v9, v5

    float-to-int v9, v9

    int-to-float v9, v9

    .line 203
    iput v9, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    mul-float v4, v4, v1

    add-float/2addr v13, v4

    mul-float v8, v8, v6

    div-float v6, v8, v11

    sub-float/2addr v13, v6

    float-to-int v9, v13

    int-to-float v9, v9

    .line 204
    iput v9, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    add-float/2addr v10, v7

    float-to-int v7, v10

    int-to-float v7, v7

    .line 205
    iput v7, v0, Landroid/support/constraint/motion/MotionPaths;->width:F

    add-float/2addr v14, v8

    float-to-int v7, v14

    int-to-float v7, v7

    .line 206
    iput v7, v0, Landroid/support/constraint/motion/MotionPaths;->height:F

    move-object/from16 v7, p1

    .line 207
    iget v8, v7, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_91

    const/4 v8, 0x0

    goto :goto_93

    :cond_91
    iget v8, v7, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    :goto_93
    neg-float v1, v1

    mul-float v1, v1, v8

    mul-float v2, v2, v8

    const/4 v8, 0x1

    .line 213
    iput v8, v0, Landroid/support/constraint/motion/MotionPaths;->mMode:I

    move-object/from16 v8, p2

    .line 214
    iget v9, v8, Landroid/support/constraint/motion/MotionPaths;->x:F

    add-float/2addr v9, v3

    sub-float/2addr v9, v5

    float-to-int v3, v9

    int-to-float v3, v3

    iput v3, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 215
    iget v5, v8, Landroid/support/constraint/motion/MotionPaths;->y:F

    add-float/2addr v5, v4

    sub-float/2addr v5, v6

    float-to-int v4, v5

    int-to-float v4, v4

    iput v4, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    add-float/2addr v3, v1

    .line 216
    iput v3, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    add-float/2addr v4, v2

    .line 217
    iput v4, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 219
    iget-object v1, v7, Landroid/support/constraint/motion/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/motion/MotionPaths;->mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

    .line 220
    iget v1, v7, Landroid/support/constraint/motion/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method initScreen(IILandroid/support/constraint/motion/KeyPosition;Landroid/support/constraint/motion/MotionPaths;Landroid/support/constraint/motion/MotionPaths;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 140
    iget v4, v1, Landroid/support/constraint/motion/KeyPosition;->mFramePosition:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 142
    iput v4, v0, Landroid/support/constraint/motion/MotionPaths;->time:F

    .line 144
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mDrawPath:I

    iput v5, v0, Landroid/support/constraint/motion/MotionPaths;->mDrawPath:I

    .line 145
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1e

    move v5, v4

    goto :goto_20

    :cond_1e
    iget v5, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentWidth:F

    .line 146
    :goto_20
    iget v6, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v6, v4

    goto :goto_2c

    :cond_2a
    iget v6, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentHeight:F

    .line 148
    :goto_2c
    iget v7, v3, Landroid/support/constraint/motion/MotionPaths;->width:F

    iget v8, v2, Landroid/support/constraint/motion/MotionPaths;->width:F

    sub-float v9, v7, v8

    .line 149
    iget v10, v3, Landroid/support/constraint/motion/MotionPaths;->height:F

    iget v11, v2, Landroid/support/constraint/motion/MotionPaths;->height:F

    sub-float v12, v10, v11

    .line 151
    iget v13, v0, Landroid/support/constraint/motion/MotionPaths;->time:F

    iput v13, v0, Landroid/support/constraint/motion/MotionPaths;->position:F

    .line 155
    iget v13, v2, Landroid/support/constraint/motion/MotionPaths;->x:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v8, v14

    add-float/2addr v15, v13

    .line 156
    iget v2, v2, Landroid/support/constraint/motion/MotionPaths;->y:F

    div-float v16, v11, v14

    add-float v16, v2, v16

    .line 157
    iget v1, v3, Landroid/support/constraint/motion/MotionPaths;->x:F

    div-float/2addr v7, v14

    add-float/2addr v1, v7

    .line 158
    iget v3, v3, Landroid/support/constraint/motion/MotionPaths;->y:F

    div-float/2addr v10, v14

    add-float/2addr v3, v10

    sub-float/2addr v1, v15

    sub-float v3, v3, v16

    mul-float v1, v1, v4

    add-float/2addr v13, v1

    mul-float v9, v9, v5

    div-float v1, v9, v14

    sub-float/2addr v13, v1

    float-to-int v1, v13

    int-to-float v1, v1

    .line 161
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    mul-float v12, v12, v6

    div-float v1, v12, v14

    sub-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 162
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    add-float/2addr v8, v9

    float-to-int v1, v8

    int-to-float v1, v1

    .line 163
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->width:F

    add-float/2addr v11, v12

    float-to-int v1, v11

    int-to-float v1, v1

    .line 164
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->height:F

    const/4 v1, 0x3

    .line 166
    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->mMode:I

    move-object/from16 v1, p3

    .line 167
    iget v2, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_93

    move/from16 v2, p1

    int-to-float v2, v2

    .line 168
    iget v3, v0, Landroid/support/constraint/motion/MotionPaths;->width:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 169
    iget v3, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentX:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 171
    :cond_93
    iget v2, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_ab

    move/from16 v2, p2

    int-to-float v2, v2

    .line 172
    iget v3, v0, Landroid/support/constraint/motion/MotionPaths;->height:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 173
    iget v3, v1, Landroid/support/constraint/motion/KeyPosition;->mPercentY:F

    int-to-float v2, v2

    mul-float v3, v3, v2

    float-to-int v2, v3

    int-to-float v2, v2

    iput v2, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 176
    :cond_ab
    iget-object v2, v1, Landroid/support/constraint/motion/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    invoke-static {v2}, Landroid/support/constraint/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroid/support/constraint/motion/utils/Easing;

    move-result-object v2

    iput-object v2, v0, Landroid/support/constraint/motion/MotionPaths;->mKeyFrameEasing:Landroid/support/constraint/motion/utils/Easing;

    .line 177
    iget v1, v1, Landroid/support/constraint/motion/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroid/support/constraint/motion/MotionPaths;->mPathMotionArc:I

    return-void
.end method

.method setBounds(FFFF)V
    .registers 5

    .line 668
    iput p1, p0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 669
    iput p2, p0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 670
    iput p3, p0, Landroid/support/constraint/motion/MotionPaths;->width:F

    .line 671
    iput p4, p0, Landroid/support/constraint/motion/MotionPaths;->height:F

    return-void
.end method

.method setDpDt(FF[F[I[D[D)V
    .registers 19

    move-object/from16 v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 572
    :goto_9
    array-length v8, v0

    const/4 v9, 0x1

    if-ge v3, v8, :cond_2a

    .line 573
    aget-wide v10, p5, v3

    double-to-float v8, v10

    .line 574
    aget-wide v10, p6, v3

    .line 578
    aget v10, v0, v3

    if-eq v10, v9, :cond_26

    const/4 v9, 0x2

    if-eq v10, v9, :cond_24

    const/4 v9, 0x3

    if-eq v10, v9, :cond_22

    const/4 v9, 0x4

    if-eq v10, v9, :cond_20

    goto :goto_27

    :cond_20
    move v7, v8

    goto :goto_27

    :cond_22
    move v5, v8

    goto :goto_27

    :cond_24
    move v6, v8

    goto :goto_27

    :cond_26
    move v4, v8

    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2a
    mul-float v0, v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v4, v0

    mul-float v0, v2, v7

    div-float/2addr v0, v3

    sub-float/2addr v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v5, v5, v0

    mul-float v7, v7, v0

    add-float/2addr v5, v4

    add-float/2addr v7, v6

    sub-float v3, v0, p1

    mul-float v4, v4, v3

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 629
    aput v4, p3, v1

    sub-float/2addr v0, p2

    mul-float v6, v6, v0

    mul-float v7, v7, p2

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 630
    aput v6, p3, v9

    return-void
.end method

.method setView(Landroid/view/View;[I[D[D[D)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 313
    iget v3, v0, Landroid/support/constraint/motion/MotionPaths;->x:F

    .line 314
    iget v4, v0, Landroid/support/constraint/motion/MotionPaths;->y:F

    .line 315
    iget v5, v0, Landroid/support/constraint/motion/MotionPaths;->width:F

    .line 316
    iget v6, v0, Landroid/support/constraint/motion/MotionPaths;->height:F

    .line 329
    array-length v7, v2

    const/4 v8, 0x1

    if-eqz v7, :cond_28

    iget-object v7, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    array-length v7, v7

    array-length v9, v2

    sub-int/2addr v9, v8

    aget v9, v2, v9

    if-gt v7, v9, :cond_28

    .line 330
    array-length v7, v2

    sub-int/2addr v7, v8

    aget v7, v2, v7

    add-int/2addr v7, v8

    .line 331
    new-array v9, v7, [D

    iput-object v9, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    .line 332
    new-array v7, v7, [D

    iput-object v7, v0, Landroid/support/constraint/motion/MotionPaths;->mTempDelta:[D

    .line 334
    :cond_28
    iget-object v7, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v7, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    const/4 v9, 0x0

    .line 335
    :goto_30
    array-length v10, v2

    if-ge v9, v10, :cond_46

    .line 336
    iget-object v10, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    aget v11, v2, v9

    aget-wide v12, p3, v9

    aput-wide v12, v10, v11

    .line 337
    iget-object v10, v0, Landroid/support/constraint/motion/MotionPaths;->mTempDelta:[D

    aget v11, v2, v9

    aget-wide v12, p4, v9

    aput-wide v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_46
    const/4 v10, 0x0

    const/high16 v11, 0x7fc00000    # Float.NaN

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 340
    :goto_4d
    iget-object v7, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    array-length v9, v7

    if-ge v10, v9, :cond_ac

    .line 341
    aget-wide v17, v7, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    const-wide/16 v17, 0x0

    if-eqz v7, :cond_68

    if-eqz p5, :cond_64

    aget-wide v19, p5, v10

    cmpl-double v7, v19, v17

    if-nez v7, :cond_68

    :cond_64
    move/from16 p4, v3

    const/4 v7, 0x1

    goto :goto_96

    :cond_68
    if-eqz p5, :cond_6c

    .line 344
    aget-wide v17, p5, v10

    .line 345
    :cond_6c
    iget-object v7, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    aget-wide v19, v7, v10

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_77

    goto :goto_7d

    :cond_77
    iget-object v7, v0, Landroid/support/constraint/motion/MotionPaths;->mTempValue:[D

    aget-wide v19, v7, v10

    add-double v17, v19, v17

    :goto_7d
    move/from16 p4, v3

    move-wide/from16 v2, v17

    double-to-float v2, v2

    .line 346
    iget-object v3, v0, Landroid/support/constraint/motion/MotionPaths;->mTempDelta:[D

    aget-wide v8, v3, v10

    double-to-float v3, v8

    const/4 v7, 0x1

    if-eq v10, v7, :cond_a6

    const/4 v8, 0x2

    if-eq v10, v8, :cond_a3

    const/4 v8, 0x3

    if-eq v10, v8, :cond_a0

    const/4 v8, 0x4

    if-eq v10, v8, :cond_9d

    const/4 v3, 0x5

    if-eq v10, v3, :cond_99

    :goto_96
    move/from16 v3, p4

    goto :goto_a8

    :cond_99
    move/from16 v3, p4

    move v11, v2

    goto :goto_a8

    :cond_9d
    move v6, v2

    move v15, v3

    goto :goto_96

    :cond_a0
    move v5, v2

    move v13, v3

    goto :goto_96

    :cond_a3
    move v4, v2

    move v14, v3

    goto :goto_96

    :cond_a6
    move v12, v3

    move v3, v2

    :goto_a8
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_4d

    :cond_ac
    move/from16 p4, v3

    const/4 v7, 0x1

    .line 377
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_c1

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 378
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_e8

    .line 379
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    goto :goto_e8

    :cond_c1
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 382
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_ca

    const/4 v2, 0x0

    :cond_ca
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v13, v3

    add-float/2addr v12, v13

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    float-to-double v2, v2

    float-to-double v8, v11

    float-to-double v10, v14

    float-to-double v12, v12

    .line 391
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v8

    double-to-float v2, v2

    .line 392
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :cond_e8
    :goto_e8
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v3, p4, v2

    float-to-int v8, v3

    add-float/2addr v4, v2

    float-to-int v2, v4

    add-float/2addr v3, v5

    float-to-int v3, v3

    add-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v5, v3, v8

    sub-int v6, v4, v2

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    if-ne v5, v9, :cond_107

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eq v6, v9, :cond_104

    goto :goto_107

    :cond_104
    const/16 v16, 0x0

    goto :goto_109

    :cond_107
    :goto_107
    const/16 v16, 0x1

    :goto_109
    if-eqz v16, :cond_118

    const/high16 v7, 0x40000000    # 2.0f

    .line 417
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 418
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 420
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 423
    :cond_118
    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method
