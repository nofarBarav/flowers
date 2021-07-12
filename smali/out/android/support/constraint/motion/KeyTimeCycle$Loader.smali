.class Landroid/support/constraint/motion/KeyTimeCycle$Loader;
.super Ljava/lang/Object;
.source "KeyTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_ROTATION:I = 0x4

.field private static final ANDROID_ROTATION_X:I = 0x5

.field private static final ANDROID_ROTATION_Y:I = 0x6

.field private static final ANDROID_SCALE_X:I = 0x7

.field private static final ANDROID_SCALE_Y:I = 0xe

.field private static final ANDROID_TRANSLATION_X:I = 0xf

.field private static final ANDROID_TRANSLATION_Y:I = 0x10

.field private static final ANDROID_TRANSLATION_Z:I = 0x11

.field private static final CURVE_FIT:I = 0xd

.field private static final FRAME_POSITION:I = 0xc

.field private static final PROGRESS:I = 0x12

.field private static final TARGET_ID:I = 0xa

.field private static final TRANSITION_EASING:I = 0x9

.field private static final TRANSITION_PATH_ROTATE:I = 0x8

.field private static final WAVE_OFFSET:I = 0x15

.field private static final WAVE_PERIOD:I = 0x14

.field private static final WAVE_SHAPE:I = 0x13

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 326
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 329
    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_elevation:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_rotation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_rotationX:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_rotationY:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_scaleX:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_transitionPathRotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_transitionEasing:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_motionTarget:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_framePosition:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_curveFit:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_scaleY:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 341
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_translationX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_translationY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_android_translationZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 344
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_motionProgress:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_wavePeriod:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_waveOffset:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 347
    sget-object v0, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyTimeCycle_waveShape:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/support/constraint/motion/KeyTimeCycle;Landroid/content/res/TypedArray;)V
    .registers 7

    .line 351
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_16a

    .line 353
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 354
    sget-object v3, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_16c

    .line 431
    :pswitch_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/support/constraint/motion/KeyTimeCycle$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyTimeCycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_166

    .line 391
    :pswitch_3e
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 392
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_54

    .line 393
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 395
    :cond_54
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$600(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$602(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 388
    :pswitch_61
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$500(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$502(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 385
    :pswitch_6e
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$400(Landroid/support/constraint/motion/KeyTimeCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$402(Landroid/support/constraint/motion/KeyTimeCycle;I)I

    goto/16 :goto_166

    .line 428
    :pswitch_7b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1600(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1602(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 423
    :pswitch_88
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_166

    .line 424
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1500(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1502(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 420
    :pswitch_9b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1400(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1402(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 417
    :pswitch_a8
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1300(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1302(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 411
    :pswitch_b5
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1100(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1102(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto/16 :goto_166

    .line 382
    :pswitch_c2
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$300(Landroid/support/constraint/motion/KeyTimeCycle;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$302(Landroid/support/constraint/motion/KeyTimeCycle;I)I

    goto/16 :goto_166

    .line 370
    :pswitch_cf
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mFramePosition:I

    goto/16 :goto_166

    .line 356
    :pswitch_d9
    sget-boolean v3, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v3, :cond_f2

    .line 357
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    .line 358
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_166

    .line 359
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetString:Ljava/lang/String;

    goto/16 :goto_166

    .line 362
    :cond_f2
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_102

    .line 363
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetString:Ljava/lang/String;

    goto :goto_166

    .line 365
    :cond_102
    iget v3, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/KeyTimeCycle;->mTargetId:I

    goto :goto_166

    .line 408
    :pswitch_10b
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1002(Landroid/support/constraint/motion/KeyTimeCycle;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_166

    .line 414
    :pswitch_113
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1200(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$1202(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto :goto_166

    .line 399
    :pswitch_11f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$700(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$702(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto :goto_166

    .line 405
    :pswitch_12b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$900(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$902(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto :goto_166

    .line 402
    :pswitch_137
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$800(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$802(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto :goto_166

    .line 379
    :pswitch_143
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$200(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$202(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto :goto_166

    .line 376
    :pswitch_14f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$100(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$102(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    goto :goto_166

    .line 373
    :pswitch_15b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyTimeCycle;->access$000(Landroid/support/constraint/motion/KeyTimeCycle;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyTimeCycle;->access$002(Landroid/support/constraint/motion/KeyTimeCycle;F)F

    :cond_166
    :goto_166
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_16a
    return-void

    nop

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_15b
        :pswitch_14f
        :pswitch_14
        :pswitch_143
        :pswitch_137
        :pswitch_12b
        :pswitch_11f
        :pswitch_113
        :pswitch_10b
        :pswitch_d9
        :pswitch_14
        :pswitch_cf
        :pswitch_c2
        :pswitch_b5
        :pswitch_a8
        :pswitch_9b
        :pswitch_88
        :pswitch_7b
        :pswitch_6e
        :pswitch_61
        :pswitch_3e
    .end packed-switch
.end method
