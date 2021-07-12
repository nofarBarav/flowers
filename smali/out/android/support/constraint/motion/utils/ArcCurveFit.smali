.class Landroid/support/constraint/motion/utils/ArcCurveFit;
.super Landroid/support/constraint/motion/utils/CurveFit;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;
    }
.end annotation


# static fields
.field public static final ARC_START_FLIP:I = 0x3

.field public static final ARC_START_HORIZONTAL:I = 0x2

.field public static final ARC_START_LINEAR:I = 0x0

.field public static final ARC_START_VERTICAL:I = 0x1

.field private static final START_HORIZONTAL:I = 0x2

.field private static final START_LINEAR:I = 0x3

.field private static final START_VERTICAL:I = 0x1


# instance fields
.field mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

.field private final mTime:[D


# direct methods
.method public constructor <init>([I[D[[D)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 168
    invoke-direct/range {p0 .. p0}, Landroid/support/constraint/motion/utils/CurveFit;-><init>()V

    .line 169
    iput-object v1, v0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mTime:[D

    .line 170
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    iput-object v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 173
    :goto_14
    iget-object v7, v0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v8, v7

    if-ge v4, v8, :cond_57

    .line 174
    aget v8, p1, v4

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_33

    if-eq v8, v3, :cond_30

    if-eq v8, v10, :cond_2d

    if-eq v8, v9, :cond_26

    goto :goto_34

    :cond_26
    if-ne v5, v3, :cond_2a

    const/4 v5, 0x2

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x1

    :goto_2b
    move v6, v5

    goto :goto_34

    :cond_2d
    const/4 v5, 0x2

    const/4 v6, 0x2

    goto :goto_34

    :cond_30
    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_34

    :cond_33
    const/4 v6, 0x3

    .line 188
    :goto_34
    new-instance v22, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-wide v10, v1, v4

    add-int/lit8 v23, v4, 0x1

    aget-wide v12, v1, v23

    aget-object v8, p3, v4

    aget-wide v14, v8, v2

    aget-object v8, p3, v4

    aget-wide v16, v8, v3

    aget-object v8, p3, v23

    aget-wide v18, v8, v2

    aget-object v8, p3, v23

    aget-wide v20, v8, v3

    move-object/from16 v8, v22

    move v9, v6

    invoke-direct/range {v8 .. v21}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;-><init>(IDDDDDD)V

    aput-object v22, v7, v4

    move/from16 v4, v23

    goto :goto_14

    :cond_57
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .registers 8

    .line 110
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_12

    .line 111
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_28

    .line 112
    :cond_12
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_28

    .line 113
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 116
    :cond_28
    :goto_28
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    if-ge v1, v2, :cond_6f

    .line 117
    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_6c

    .line 119
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v0, :cond_51

    if-nez p3, :cond_48

    .line 121
    iget-object p3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide p1

    return-wide p1

    .line 123
    :cond_48
    iget-object p3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p1

    return-wide p1

    .line 125
    :cond_51
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_63

    .line 128
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    return-wide p1

    .line 130
    :cond_63
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p1

    return-wide p1

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_6f
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 10

    .line 40
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_11

    .line 41
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 43
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    iget-wide v4, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_26

    .line 44
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_26
    const/4 v0, 0x0

    .line 47
    :goto_27
    iget-object v2, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v4, v2

    if-ge v0, v4, :cond_70

    .line 48
    aget-object v2, v2, v0

    iget-wide v4, v2, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v2, p1, v4

    if-gtz v2, :cond_6d

    .line 49
    iget-object v2, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v2, :cond_51

    .line 50
    iget-object v2, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 51
    iget-object v1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p1

    aput-wide p1, p3, v3

    return-void

    .line 54
    :cond_51
    iget-object v2, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 55
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    aput-wide p1, p3, v1

    .line 56
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p1

    aput-wide p1, p3, v3

    return-void

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_70
    return-void
.end method

.method public getPos(D[F)V
    .registers 10

    .line 64
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    const/4 v0, 0x1

    cmpg-double v4, p1, v2

    if-gez v4, :cond_13

    .line 65
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_27

    .line 66
    :cond_13
    iget-object v2, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_27

    .line 67
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_27
    :goto_27
    const/4 v2, 0x0

    .line 70
    :goto_28
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v4, v3

    if-ge v2, v4, :cond_75

    .line 71
    aget-object v3, v3, v2

    iget-wide v3, v3, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_72

    .line 72
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_54

    .line 73
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearX(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, p3, v1

    .line 74
    iget-object v1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearY(D)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    return-void

    .line 77
    :cond_54
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 78
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getX()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    .line 79
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getY()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v0

    return-void

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_75
    return-void
.end method

.method public getSlope(DI)D
    .registers 8

    .line 138
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    cmpg-double v0, p1, v2

    if-gez v0, :cond_11

    .line 139
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    .line 141
    :cond_11
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v0, p1, v2

    if-lez v0, :cond_27

    .line 142
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    .line 145
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v2, v0

    if-ge v1, v2, :cond_6e

    .line 146
    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_6b

    .line 147
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v0, :cond_50

    if-nez p3, :cond_47

    .line 149
    iget-object p3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide p1

    return-wide p1

    .line 151
    :cond_47
    iget-object p3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide p1

    return-wide p1

    .line 153
    :cond_50
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    if-nez p3, :cond_62

    .line 155
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide p1

    return-wide p1

    .line 157
    :cond_62
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide p1

    return-wide p1

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_6e
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 10

    .line 87
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-wide v2, v0, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    const/4 v0, 0x1

    cmpg-double v4, p1, v2

    if-gez v4, :cond_13

    .line 88
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v1

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime1:D

    goto :goto_27

    .line 89
    :cond_13
    iget-object v2, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v3, v2

    sub-int/2addr v3, v0

    aget-object v2, v2, v3

    iget-wide v2, v2, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_27

    .line 90
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length p2, p1

    sub-int/2addr p2, v0

    aget-object p1, p1, p2

    iget-wide p1, p1, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    :cond_27
    :goto_27
    const/4 v2, 0x0

    .line 93
    :goto_28
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    array-length v4, v3

    if-ge v2, v4, :cond_71

    .line 94
    aget-object v3, v3, v2

    iget-wide v3, v3, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->mTime2:D

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_6e

    .line 95
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->linear:Z

    if-eqz v3, :cond_52

    .line 96
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearDX(D)D

    move-result-wide v3

    aput-wide v3, p3, v1

    .line 97
    iget-object v1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v1, v1, v2

    invoke-virtual {v1, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getLinearDY(D)D

    move-result-wide p1

    aput-wide p1, p3, v0

    return-void

    .line 100
    :cond_52
    iget-object v3, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->setPoint(D)V

    .line 101
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getDX()D

    move-result-wide p1

    aput-wide p1, p3, v1

    .line 102
    iget-object p1, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mArcs:[Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/support/constraint/motion/utils/ArcCurveFit$Arc;->getDY()D

    move-result-wide p1

    aput-wide p1, p3, v0

    return-void

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_71
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/support/constraint/motion/utils/ArcCurveFit;->mTime:[D

    return-object v0
.end method