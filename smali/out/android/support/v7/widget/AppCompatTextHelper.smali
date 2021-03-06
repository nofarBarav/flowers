.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# static fields
.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 65
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 66
    new-instance v0, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 371
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    :cond_d
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
    .registers 3

    .line 377
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 379
    new-instance p1, Landroid/support/v7/widget/TintInfo;

    invoke-direct {p1}, Landroid/support/v7/widget/TintInfo;-><init>()V

    const/4 p2, 0x1

    .line 380
    iput-boolean p2, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 381
    iput-object p0, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private setTextSizeInternal(IF)V
    .registers 4

    .line 418
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V
    .registers 7

    .line 242
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    .line 244
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_45

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 245
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_45

    .line 282
    :cond_1d
    sget p1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_44

    .line 284
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 285
    sget p1, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v2, :cond_40

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_36

    goto :goto_44

    .line 296
    :cond_36
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_44

    .line 292
    :cond_3b
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_44

    .line 288
    :cond_40
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_44
    :goto_44
    return-void

    :cond_45
    :goto_45
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 247
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_53

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_fontFamily:I

    goto :goto_55

    :cond_53
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 250
    :goto_55
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_76

    .line 251
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 252
    new-instance v3, Landroid/support/v7/widget/AppCompatTextHelper$1;

    invoke-direct {v3, p0, p1}, Landroid/support/v7/widget/AppCompatTextHelper$1;-><init>(Landroid/support/v7/widget/AppCompatTextHelper;Ljava/lang/ref/WeakReference;)V

    .line 265
    :try_start_67
    iget p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, p1, v3}, Landroid/support/v7/widget/TintTypedArray;->getFont(IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_72

    const/4 v1, 0x1

    .line 267
    :cond_72
    iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_74
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_67 .. :try_end_74} :catch_75
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_67 .. :try_end_74} :catch_75

    goto :goto_76

    :catch_75
    nop

    .line 272
    :cond_76
    :goto_76
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_88

    .line 274
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 276
    iget p2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_88
    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 6

    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 354
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 355
    aget-object v3, v0, v2

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    const/4 v3, 0x1

    .line 356
    aget-object v3, v0, v3

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 357
    aget-object v3, v0, v1

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    const/4 v3, 0x3

    .line 358
    aget-object v0, v0, v3

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 360
    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_58

    .line 362
    :cond_44
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    aget-object v2, v0, v2

    iget-object v3, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 364
    aget-object v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    :cond_58
    return-void
.end method

.method autoSizeText()V
    .registers 2

    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    .line 445
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    .line 441
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 71
    iget-object v3, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 72
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v4

    .line 75
    sget-object v5, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    .line 77
    sget v7, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    .line 79
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 80
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 81
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 80
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 83
    :cond_32
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 84
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 85
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 84
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 87
    :cond_46
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 88
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 89
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 88
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 91
    :cond_5a
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 92
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 93
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 92
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 96
    :cond_6e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_9c

    .line 97
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 98
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 99
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 98
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v9

    iput-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    .line 101
    :cond_88
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 102
    sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 103
    invoke-virtual {v5, v9, v6}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v9

    .line 102
    invoke-static {v3, v4, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v4

    iput-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    .line 107
    :cond_9c
    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 112
    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/4 v5, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    if-eq v7, v8, :cond_108

    .line 122
    sget-object v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v3, v7, v11}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v7

    if-nez v4, :cond_c5

    .line 123
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_c5

    .line 125
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v11, v6}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    const/4 v12, 0x1

    goto :goto_c7

    :cond_c5
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 128
    :goto_c7
    invoke-direct {v0, v3, v7}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V

    .line 129
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v9, :cond_102

    .line 132
    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v13

    if-eqz v13, :cond_dd

    .line 133
    sget v13, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_de

    :cond_dd
    move-object v13, v10

    .line 135
    :goto_de
    sget v14, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_ed

    .line 136
    sget v14, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v14}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_ee

    :cond_ed
    move-object v14, v10

    .line 139
    :goto_ee
    sget v15, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v15}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_fc

    .line 140
    sget v10, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :cond_fc
    move-object/from16 v16, v13

    move-object v13, v10

    move-object/from16 v10, v16

    goto :goto_104

    :cond_102
    move-object v13, v10

    move-object v14, v13

    .line 144
    :goto_104
    invoke-virtual {v7}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    goto :goto_10c

    :cond_108
    move-object v13, v10

    move-object v14, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 148
    :goto_10c
    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v3, v1, v7, v2, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v7

    if-nez v4, :cond_123

    .line 150
    sget v15, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v15}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_123

    .line 152
    sget v11, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v11, v6}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    goto :goto_124

    :cond_123
    move v5, v12

    .line 154
    :goto_124
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v12, v9, :cond_152

    .line 157
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_136

    .line 158
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 160
    :cond_136
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_144

    .line 161
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    .line 164
    :cond_144
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_152

    .line 165
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 170
    :cond_152
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1c

    if-lt v9, v12, :cond_16e

    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 171
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v9

    if-eqz v9, :cond_16e

    .line 172
    sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {v7, v9, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v9

    if-nez v9, :cond_16e

    .line 173
    iget-object v9, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v9, v6, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 177
    :cond_16e
    invoke-direct {v0, v3, v7}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V

    .line 178
    invoke-virtual {v7}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    if-eqz v10, :cond_17b

    .line 181
    iget-object v7, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17b
    if-eqz v14, :cond_182

    .line 184
    iget-object v7, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_182
    if-eqz v13, :cond_189

    .line 187
    iget-object v7, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_189
    if-nez v4, :cond_190

    if-eqz v5, :cond_190

    .line 190
    invoke-virtual {v0, v11}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 192
    :cond_190
    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_19b

    .line 193
    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v7, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 196
    :cond_19b
    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v4, v1, v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 198
    sget-boolean v2, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v2, :cond_1df

    .line 200
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v2

    if-eqz v2, :cond_1df

    .line 202
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 203
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v2

    .line 204
    array-length v4, v2

    if-lez v4, :cond_1df

    .line 205
    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1da

    .line 208
    iget-object v2, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 209
    invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v4

    iget-object v5, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 210
    invoke-virtual {v5}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v5

    iget-object v7, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    .line 211
    invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v7

    .line 208
    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_1df

    .line 214
    :cond_1da
    iget-object v4, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 222
    :cond_1df
    :goto_1df
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v3, v1, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v1

    .line 223
    sget v2, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v1, v2, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 225
    sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v1, v3, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 227
    sget v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v1, v4, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 229
    invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    if-eq v2, v8, :cond_201

    .line 231
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    :cond_201
    if-eq v3, v8, :cond_208

    .line 234
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroid/support/v4/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    :cond_208
    if-eq v4, v8, :cond_20f

    .line 237
    iget-object v1, v0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroid/support/v4/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    :cond_20f
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 304
    iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_13

    .line 305
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 306
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_13

    .line 308
    iget v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_13
    return-void
.end method

.method onLayout(ZIIII)V
    .registers 6

    .line 390
    sget-boolean p1, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_7

    .line 391
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->autoSizeText()V

    :cond_7
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .registers 6

    .line 314
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p2

    .line 316
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 321
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 323
    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_33

    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 324
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 327
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 328
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 330
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 334
    :cond_33
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 335
    sget v0, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_4a

    .line 336
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    :cond_4a
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroid/support/v7/widget/TintTypedArray;)V

    .line 341
    invoke-virtual {p2}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 342
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_5b

    .line 343
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5b
    return-void
.end method

.method setAllCaps(Z)V
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    .line 422
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method setTextSize(IF)V
    .registers 4

    .line 398
    sget-boolean v0, Landroid/support/v4/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_d

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    :cond_d
    return-void
.end method
