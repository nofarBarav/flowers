.class public Landroid/support/constraint/motion/utils/StopLogic;
.super Landroid/support/constraint/motion/MotionInterpolator;
.source "StopLogic.java"


# instance fields
.field private mBackwards:Z

.field private mLastPosition:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/support/constraint/motion/MotionInterpolator;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mBackwards:Z

    return-void
.end method

.method private calcY(F)F
    .registers 7

    .line 112
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_18

    .line 113
    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    mul-float v3, v2, p1

    iget v4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr v4, v2

    mul-float v4, v4, p1

    mul-float v4, v4, p1

    mul-float v0, v0, v1

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    return v3

    .line 115
    :cond_18
    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 116
    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    return p1

    :cond_20
    sub-float/2addr p1, v0

    .line 119
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v3, p1, v0

    if-gez v3, :cond_3a

    .line 121
    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    iget v3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v2, v4

    iget v4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr v4, v3

    mul-float v4, v4, p1

    mul-float v4, v4, p1

    mul-float v0, v0, v1

    div-float/2addr v4, v0

    add-float/2addr v2, v4

    return v2

    :cond_3a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    .line 124
    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    return p1

    :cond_40
    sub-float/2addr p1, v0

    .line 127
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_57

    .line 129
    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    iget v3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v2, v4

    mul-float v3, v3, p1

    mul-float v3, v3, p1

    mul-float v0, v0, v1

    div-float/2addr v3, v0

    sub-float/2addr v2, v3

    return v2

    .line 131
    :cond_57
    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3EndPosition:F

    return p1
.end method

.method private setup(FFFFF)V
    .registers 14

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_8

    const p1, 0x38d1b717    # 1.0E-4f

    .line 163
    :cond_8
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    div-float v1, p1, p3

    mul-float v2, v1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    cmpg-float v6, p1, v0

    if-gez v6, :cond_75

    neg-float p5, p1

    div-float/2addr p5, p3

    mul-float p5, p5, p1

    div-float/2addr p5, v3

    sub-float p5, p2, p5

    mul-float p5, p5, p3

    float-to-double v1, p5

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    cmpg-float v1, p5, p4

    if-gez v1, :cond_4a

    const-string p4, "backward accelerate, decelerate"

    .line 173
    iput-object p4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 174
    iput v5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    .line 175
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    .line 176
    iput p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    .line 177
    iput v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float p4, p5, p1

    div-float/2addr p4, p3

    .line 178
    iput p4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    div-float p3, p5, p3

    .line 179
    iput p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    add-float/2addr p1, p5

    mul-float p1, p1, p4

    div-float/2addr p1, v3

    .line 180
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 181
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 182
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void

    :cond_4a
    const-string p5, "backward accelerate cruse decelerate"

    .line 185
    iput-object p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 186
    iput v4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    .line 187
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    .line 188
    iput p4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    .line 189
    iput p4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    .line 191
    iput p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    div-float p3, p4, p3

    .line 192
    iput p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Duration:F

    add-float/2addr p1, p4

    mul-float p1, p1, p5

    div-float/2addr p1, v3

    mul-float p3, p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    .line 195
    iput p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    .line 196
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    sub-float p1, p2, p3

    .line 197
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 198
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void

    :cond_75
    cmpl-float v6, v2, p2

    if-ltz v6, :cond_8c

    const-string p3, "hard stop"

    .line 204
    iput-object p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    mul-float v3, v3, p2

    div-float/2addr v3, p1

    const/4 p3, 0x1

    .line 206
    iput p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    .line 207
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    .line 208
    iput v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    .line 209
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 210
    iput v3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    return-void

    :cond_8c
    sub-float v2, p2, v2

    div-float v6, v2, p1

    add-float v7, v6, v1

    cmpg-float p5, v7, p5

    if-gez p5, :cond_ab

    const-string p3, "cruse decelerate"

    .line 217
    iput-object p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 218
    iput v5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    .line 219
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    .line 220
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    .line 221
    iput v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    .line 222
    iput v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 223
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 224
    iput v6, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    .line 225
    iput v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    return-void

    :cond_ab
    mul-float p5, p3, p2

    mul-float v1, p1, p1

    div-float/2addr v1, v3

    add-float/2addr p5, v1

    float-to-double v1, p5

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    sub-float v1, p5, p1

    div-float/2addr v1, p3

    .line 230
    iput v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    div-float v2, p5, p3

    .line 231
    iput v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v6, p5, p4

    if-gez v6, :cond_dd

    const-string p3, "accelerate decelerate"

    .line 233
    iput-object p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 234
    iput v5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    .line 235
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    .line 236
    iput p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    .line 237
    iput v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    .line 238
    iput v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    .line 239
    iput v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    add-float/2addr p1, p5

    mul-float p1, p1, v1

    div-float/2addr p1, v3

    .line 240
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    .line 241
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    return-void

    :cond_dd
    const-string p5, "accelerate cruse decelerate"

    .line 245
    iput-object p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    .line 247
    iput v4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    .line 248
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    .line 249
    iput p4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    .line 250
    iput p4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    .line 252
    iput p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    div-float p3, p4, p3

    .line 253
    iput p3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Duration:F

    add-float/2addr p1, p4

    mul-float p1, p1, p5

    div-float/2addr p1, v3

    mul-float p3, p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    .line 257
    iput p5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    .line 258
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    sub-float p1, p2, p3

    .line 259
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    .line 260
    iput p2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .registers 13

    .line 137
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStartPosition:F

    cmpl-float v1, p1, p2

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 138
    :goto_9
    iput-boolean v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_18

    neg-float v1, p3

    sub-float v2, p1, p2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p4

    .line 140
    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/utils/StopLogic;->setup(FFFFF)V

    goto :goto_22

    :cond_18
    sub-float v2, p2, p1

    move-object v0, p0

    move v1, p3

    move v3, p5

    move v4, p6

    move v5, p4

    .line 142
    invoke-direct/range {v0 .. v5}, Landroid/support/constraint/motion/utils/StopLogic;->setup(FFFFF)V

    :goto_22
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;F)V
    .registers 10

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_28

    const-string v1, "backwards"

    goto :goto_2a

    :cond_28
    const-string v1, "forward "

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "  stages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " vel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " pos "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1EndPosition:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_9f

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_9f
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v5, 0x2

    if-le v0, v5, :cond_cb

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3EndPosition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_cb
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_e6

    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "stage 0"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_e6
    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    if-ne v1, v4, :cond_ff

    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "end stage 0"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ff
    sub-float/2addr p3, v0

    .line 70
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p3, v0

    if-gez v2, :cond_11b

    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stage 1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11b
    if-ne v1, v5, :cond_132

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "end stage 1"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_132
    sub-float/2addr p3, v0

    .line 80
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float p3, p3, v0

    if-gez p3, :cond_14e

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " stage 2"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_14e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " end stage 2"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getInterpolation(F)F
    .registers 3

    .line 148
    invoke-direct {p0, p1}, Landroid/support/constraint/motion/utils/StopLogic;->calcY(F)F

    move-result v0

    .line 149
    iput p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mLastPosition:F

    .line 150
    iget-boolean p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mBackwards:Z

    if-eqz p1, :cond_e

    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStartPosition:F

    sub-float/2addr p1, v0

    goto :goto_11

    :cond_e
    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStartPosition:F

    add-float/2addr p1, v0

    :goto_11
    return p1
.end method

.method public getVelocity()F
    .registers 2

    .line 155
    iget-boolean v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mLastPosition:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/utils/StopLogic;->getVelocity(F)F

    move-result v0

    neg-float v0, v0

    goto :goto_12

    :cond_c
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mLastPosition:F

    invoke-virtual {p0, v0}, Landroid/support/constraint/motion/utils/StopLogic;->getVelocity(F)F

    move-result v0

    :goto_12
    return v0
.end method

.method public getVelocity(F)F
    .registers 5

    .line 89
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_10

    .line 90
    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage1Velocity:F

    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    .line 92
    :cond_10
    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    const/4 p1, 0x0

    return p1

    :cond_17
    sub-float/2addr p1, v0

    .line 96
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_28

    .line 98
    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2Velocity:F

    iget v2, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr v2, v1

    mul-float v2, v2, p1

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1

    :cond_28
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 101
    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage2EndPosition:F

    return p1

    :cond_2e
    sub-float/2addr p1, v0

    .line 104
    iget v0, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_3c

    .line 106
    iget v1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float p1, p1, v1

    div-float/2addr p1, v0

    sub-float/2addr v1, p1

    return v1

    .line 108
    :cond_3c
    iget p1, p0, Landroid/support/constraint/motion/utils/StopLogic;->mStage3EndPosition:F

    return p1
.end method
