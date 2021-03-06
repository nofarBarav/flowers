.class public Landroid/support/constraint/motion/utils/LinearCurveFit;
.super Landroid/support/constraint/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 16

    .line 30
    invoke-direct {p0}, Landroid/support/constraint/motion/utils/CurveFit;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 28
    iput-wide v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 31
    array-length v0, p1

    const/4 v0, 0x0

    .line 32
    aget-object v1, p2, v0

    array-length v1, v1

    .line 33
    iput-object p1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    .line 34
    iput-object p2, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v2, 0x2

    if-le v1, v2, :cond_33

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    const/4 v3, 0x0

    .line 38
    :goto_18
    array-length v8, p1

    if-ge v3, v8, :cond_31

    .line 39
    aget-object v8, p2, v3

    aget-wide v9, v8, v0

    .line 40
    aget-object v8, p2, v3

    aget-wide v11, v8, v0

    if-lez v3, :cond_2c

    sub-double v4, v9, v4

    sub-double v6, v11, v6

    .line 42
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v9

    move-wide v6, v11

    goto :goto_18

    .line 47
    :cond_31
    iput-wide v1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mTotalLength:D

    :cond_33
    return-void
.end method

.method private getLength2D(D)D
    .registers 24

    move-object/from16 v0, p0

    .line 58
    iget-wide v1, v0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mTotalLength:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_d

    return-wide v2

    .line 61
    :cond_d
    iget-object v1, v0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    array-length v4, v1

    const/4 v5, 0x0

    .line 62
    aget-wide v6, v1, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_18

    return-wide v2

    :cond_18
    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 65
    aget-wide v7, v1, v4

    cmpl-double v1, p1, v7

    if-ltz v1, :cond_23

    .line 66
    iget-wide v1, v0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mTotalLength:D

    return-wide v1

    :cond_23
    move-wide v7, v2

    move-wide v9, v7

    move-wide v11, v9

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v4, :cond_88

    .line 72
    iget-object v13, v0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v14, v13, v1

    aget-wide v15, v14, v5

    .line 73
    aget-object v13, v13, v1

    aget-wide v17, v13, v6

    if-lez v1, :cond_3e

    sub-double v9, v15, v9

    sub-double v11, v17, v11

    .line 75
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 79
    :cond_3e
    iget-object v9, v0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v10, v9, v1

    cmpl-double v12, p1, v10

    if-nez v12, :cond_47

    return-wide v7

    :cond_47
    add-int/lit8 v10, v1, 0x1

    .line 82
    aget-wide v11, v9, v10

    cmpg-double v13, p1, v11

    if-gez v13, :cond_83

    .line 83
    aget-wide v2, v9, v10

    aget-wide v11, v9, v1

    sub-double/2addr v2, v11

    .line 84
    aget-wide v11, v9, v1

    sub-double v11, p1, v11

    div-double/2addr v11, v2

    .line 85
    iget-object v2, v0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v3, v2, v1

    aget-wide v13, v3, v5

    .line 86
    aget-object v3, v2, v10

    aget-wide v4, v3, v5

    .line 87
    aget-object v1, v2, v1

    aget-wide v19, v1, v6

    .line 88
    aget-object v1, v2, v10

    aget-wide v2, v1, v6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v11

    mul-double v19, v19, v9

    mul-double v2, v2, v11

    add-double v19, v19, v2

    sub-double v1, v17, v19

    mul-double v13, v13, v9

    mul-double v4, v4, v11

    add-double/2addr v13, v4

    sub-double v3, v15, v13

    .line 92
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    add-double/2addr v7, v1

    return-wide v7

    :cond_83
    move v1, v10

    move-wide v9, v15

    move-wide/from16 v11, v17

    goto :goto_27

    :cond_88
    return-wide v2
.end method


# virtual methods
.method public getPos(DI)D
    .registers 12

    .line 173
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 174
    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gtz v5, :cond_11

    .line 175
    iget-object p1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v2

    aget-wide p2, p1, p3

    return-wide p2

    :cond_11
    add-int/lit8 v1, v1, -0x1

    .line 177
    aget-wide v3, v0, v1

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_20

    .line 178
    iget-object p1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v1

    aget-wide p2, p1, p3

    return-wide p2

    :cond_20
    :goto_20
    if-ge v2, v1, :cond_57

    .line 182
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v3, v0, v2

    cmpl-double v5, p1, v3

    if-nez v5, :cond_31

    .line 183
    iget-object p1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v2

    aget-wide p2, p1, p3

    return-wide p2

    :cond_31
    add-int/lit8 v3, v2, 0x1

    .line 185
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gez v6, :cond_55

    .line 186
    aget-wide v4, v0, v3

    aget-wide v6, v0, v2

    sub-double/2addr v4, v6

    .line 187
    aget-wide v6, v0, v2

    sub-double/2addr p1, v6

    div-double/2addr p1, v4

    .line 188
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v0, v2

    aget-wide v4, v1, p3

    .line 189
    aget-object v0, v0, v3

    aget-wide v1, v0, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p1

    mul-double v4, v4, v6

    mul-double v1, v1, p1

    add-double/2addr v4, v1

    return-wide v4

    :cond_55
    move v2, v3

    goto :goto_20

    :cond_57
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getPos(D[D)V
    .registers 16

    .line 101
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 102
    iget-object v2, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 103
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_1e

    const/4 p1, 0x0

    :goto_10
    if-ge p1, v2, :cond_1d

    .line 105
    iget-object p2, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_1d
    return-void

    :cond_1e
    add-int/lit8 v1, v1, -0x1

    .line 109
    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_34

    :goto_26
    if-ge v3, v2, :cond_33

    .line 111
    iget-object p1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v1

    aget-wide v4, p1, v3

    aput-wide v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_33
    return-void

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-ge v0, v1, :cond_7c

    .line 117
    iget-object v4, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_4d

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v2, :cond_4d

    .line 119
    iget-object v5, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    aput-wide v6, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 122
    :cond_4d
    iget-object v4, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_7a

    .line 123
    aget-wide v6, v4, v5

    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    .line 124
    aget-wide v8, v4, v0

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_60
    if-ge v3, v2, :cond_79

    .line 126
    iget-object v1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 127
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double v6, v6, v10

    mul-double v8, v8, p1

    add-double/2addr v6, v8

    .line 129
    aput-wide v6, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    :cond_79
    return-void

    :cond_7a
    move v0, v5

    goto :goto_35

    :cond_7c
    return-void
.end method

.method public getPos(D[F)V
    .registers 16

    .line 137
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 138
    iget-object v2, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 139
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_1f

    const/4 p1, 0x0

    :goto_10
    if-ge p1, v2, :cond_1e

    .line 141
    iget-object p2, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_1e
    return-void

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    .line 145
    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_36

    :goto_27
    if-ge v3, v2, :cond_35

    .line 147
    iget-object p1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v1

    aget-wide v4, p1, v3

    double-to-float p1, v4

    aput p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_35
    return-void

    :cond_36
    const/4 v0, 0x0

    :goto_37
    if-ge v0, v1, :cond_80

    .line 153
    iget-object v4, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v5, v4, v0

    cmpl-double v4, p1, v5

    if-nez v4, :cond_50

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v2, :cond_50

    .line 155
    iget-object v5, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v6, v5, v4

    double-to-float v5, v6

    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 158
    :cond_50
    iget-object v4, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_7e

    .line 159
    aget-wide v6, v4, v5

    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    .line 160
    aget-wide v8, v4, v0

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_63
    if-ge v3, v2, :cond_7d

    .line 162
    iget-object v1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 163
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double v6, v6, v10

    mul-double v8, v8, p1

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 165
    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    :cond_7d
    return-void

    :cond_7e
    move v0, v5

    goto :goto_37

    :cond_80
    return-void
.end method

.method public getSlope(DI)D
    .registers 11

    .line 223
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 225
    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_d

    .line 226
    aget-wide p1, v0, v2

    goto :goto_17

    :cond_d
    add-int/lit8 v3, v1, -0x1

    .line 227
    aget-wide v4, v0, v3

    cmpl-double v6, p1, v4

    if-ltz v6, :cond_17

    .line 228
    aget-wide p1, v0, v3

    :cond_17
    :goto_17
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_3b

    .line 231
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_39

    .line 232
    aget-wide p1, v0, v3

    aget-wide v4, v0, v2

    sub-double/2addr p1, v4

    .line 233
    aget-wide v4, v0, v2

    .line 234
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v1, v0, v2

    aget-wide v4, v1, p3

    .line 235
    aget-object v0, v0, v3

    aget-wide v1, v0, p3

    sub-double/2addr v1, v4

    div-double/2addr v1, p1

    return-wide v1

    :cond_39
    move v2, v3

    goto :goto_17

    :cond_3b
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getSlope(D[D)V
    .registers 14

    .line 198
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 199
    iget-object v2, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 200
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_12

    .line 201
    aget-wide p1, v0, v3

    goto :goto_1c

    :cond_12
    add-int/lit8 v4, v1, -0x1

    .line 202
    aget-wide v5, v0, v4

    cmpl-double v7, p1, v5

    if-ltz v7, :cond_1c

    .line 203
    aget-wide p1, v0, v4

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_47

    .line 207
    iget-object v4, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_45

    .line 208
    aget-wide p1, v4, v5

    aget-wide v6, v4, v0

    sub-double/2addr p1, v6

    .line 209
    aget-wide v6, v4, v0

    :goto_32
    if-ge v3, v2, :cond_47

    .line 211
    iget-object v1, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 212
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    sub-double/2addr v8, v6

    div-double/2addr v8, p1

    .line 214
    aput-wide v8, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_45
    move v0, v5

    goto :goto_1d

    :cond_47
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/support/constraint/motion/utils/LinearCurveFit;->mT:[D

    return-object v0
.end method
