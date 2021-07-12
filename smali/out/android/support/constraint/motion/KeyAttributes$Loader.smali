.class Landroid/support/constraint/motion/KeyAttributes$Loader;
.super Ljava/lang/Object;
.source "KeyAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/motion/KeyAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final ANDROID_ALPHA:I = 0x1

.field private static final ANDROID_ELEVATION:I = 0x2

.field private static final ANDROID_PIVOT_X:I = 0x13

.field private static final ANDROID_PIVOT_Y:I = 0x14

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

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 352
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    .line 355
    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_alpha:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 356
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_elevation:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_rotation:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_rotationX:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_rotationY:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_transformPivotX:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_transformPivotY:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 362
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_scaleX:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 363
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_transitionPathRotate:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 364
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_transitionEasing:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_motionTarget:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 366
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_framePosition:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_curveFit:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_scaleY:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 369
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_translationX:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 370
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_translationY:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 371
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_android_translationZ:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    sget-object v0, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->KeyAttribute_motionProgress:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/support/constraint/motion/KeyAttributes;Landroid/content/res/TypedArray;)V
    .registers 7

    .line 376
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_147

    .line 378
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 379
    sget-object v3, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_148

    .line 448
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

    sget-object v4, Landroid/support/constraint/motion/KeyAttributes$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyAttribute"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_143

    .line 422
    :pswitch_3e
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$800(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$802(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 419
    :pswitch_4b
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$700(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$702(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 445
    :pswitch_58
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$1500(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$1502(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 440
    :pswitch_65
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_143

    .line 441
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$1400(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$1402(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 437
    :pswitch_78
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$1300(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$1302(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 434
    :pswitch_85
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$1200(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$1202(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 428
    :pswitch_92
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$1000(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$1002(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto/16 :goto_143

    .line 407
    :pswitch_9f
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$300(Landroid/support/constraint/motion/KeyAttributes;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$302(Landroid/support/constraint/motion/KeyAttributes;I)I

    goto/16 :goto_143

    .line 395
    :pswitch_ac
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/KeyAttributes;->mFramePosition:I

    goto/16 :goto_143

    .line 381
    :pswitch_b6
    sget-boolean v3, Landroid/support/constraint/motion/MotionLayout;->IS_IN_EDIT_MODE:Z

    if-eqz v3, :cond_cf

    .line 382
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetId:I

    .line 383
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_143

    .line 384
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetString:Ljava/lang/String;

    goto/16 :goto_143

    .line 387
    :cond_cf
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_df

    .line 388
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetString:Ljava/lang/String;

    goto :goto_143

    .line 390
    :cond_df
    iget v3, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetId:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/constraint/motion/KeyAttributes;->mTargetId:I

    goto :goto_143

    .line 425
    :pswitch_e8
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$902(Landroid/support/constraint/motion/KeyAttributes;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_143

    .line 431
    :pswitch_f0
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$1100(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$1102(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto :goto_143

    .line 410
    :pswitch_fc
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$400(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$402(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto :goto_143

    .line 416
    :pswitch_108
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$600(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$602(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto :goto_143

    .line 413
    :pswitch_114
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$500(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$502(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto :goto_143

    .line 404
    :pswitch_120
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$200(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$202(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto :goto_143

    .line 401
    :pswitch_12c
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$100(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$102(Landroid/support/constraint/motion/KeyAttributes;F)F

    goto :goto_143

    .line 398
    :pswitch_138
    invoke-static {p0}, Landroid/support/constraint/motion/KeyAttributes;->access$000(Landroid/support/constraint/motion/KeyAttributes;)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-static {p0, v2}, Landroid/support/constraint/motion/KeyAttributes;->access$002(Landroid/support/constraint/motion/KeyAttributes;F)F

    :cond_143
    :goto_143
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_147
    return-void

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_138
        :pswitch_12c
        :pswitch_14
        :pswitch_120
        :pswitch_114
        :pswitch_108
        :pswitch_fc
        :pswitch_f0
        :pswitch_e8
        :pswitch_b6
        :pswitch_14
        :pswitch_ac
        :pswitch_9f
        :pswitch_92
        :pswitch_85
        :pswitch_78
        :pswitch_65
        :pswitch_58
        :pswitch_4b
        :pswitch_3e
    .end packed-switch
.end method
