.class final Lcom/railty/cerfandroid/PhoneKeypad;
.super Landroid/widget/LinearLayout;
.source "PhoneKeypad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/PhoneKeypad$KeySink;,
        Lcom/railty/cerfandroid/PhoneKeypad$Key;,
        Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;
    }
.end annotation


# static fields
.field private static final GREEN:I

.field private static final RED:I

.field private static final START_LABEL:Ljava/lang/String; = "start-glyph"

.field private static final VK_BACK:I = 0x8

.field private static final VK_DOWN:I = 0x28

.field private static final VK_F1:I = 0x70

.field private static final VK_F2:I = 0x71

.field private static final VK_F3:I = 0x72

.field private static final VK_F4:I = 0x73

.field private static final VK_F5:I = 0x74

.field private static final VK_LEFT:I = 0x25

.field private static final VK_LWIN:I = 0x5b

.field private static final VK_RETURN:I = 0xd

.field private static final VK_RIGHT:I = 0x27

.field private static final VK_SHIFT:I = 0x10

.field private static final VK_UP:I = 0x26

.field private static final WHITE:I


# instance fields
.field private final sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/16 v0, 0xeb

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    .line 32
    const/16 v0, 0xc8

    const/16 v1, 0x50

    const/16 v2, 0x28

    invoke-static {v2, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/PhoneKeypad;->GREEN:I

    .line 33
    const/16 v0, 0xe6

    const/16 v1, 0x32

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/railty/cerfandroid/PhoneKeypad;->RED:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/railty/cerfandroid/PhoneKeypad$KeySink;)V
    .locals 18

    .line 39
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/railty/cerfandroid/PhoneKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    .line 41
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/railty/cerfandroid/PhoneKeypad;->setOrientation(I)V

    .line 42
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Lcom/railty/cerfandroid/PhoneKeypad;->setBackgroundColor(I)V

    .line 43
    const/4 v2, 0x5

    new-array v3, v2, [Lcom/railty/cerfandroid/PhoneKeypad$Key;

    new-instance v4, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v8, 0x0

    sget v9, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v5, "\u2190"

    const/4 v6, 0x0

    const/16 v7, 0x25

    invoke-direct/range {v4 .. v9}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v6, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v10, 0x0

    sget v11, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v7, "\u2191"

    const/4 v8, 0x0

    const/16 v9, 0x26

    invoke-direct/range {v6 .. v11}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v6, v3, v1

    new-instance v7, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v11, 0x0

    sget v12, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v8, "OK"

    const/4 v9, 0x0

    const/16 v10, 0xd

    invoke-direct/range {v7 .. v12}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    const/4 v4, 0x2

    aput-object v7, v3, v4

    new-instance v8, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v12, 0x0

    sget v13, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v9, "\u2193"

    const/4 v10, 0x0

    const/16 v11, 0x28

    invoke-direct/range {v8 .. v13}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    const/4 v6, 0x3

    aput-object v8, v3, v6

    new-instance v9, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v13, 0x0

    sget v14, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v10, "\u2192"

    const/4 v11, 0x0

    const/16 v12, 0x27

    invoke-direct/range {v9 .. v14}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    const/4 v7, 0x4

    aput-object v9, v3, v7

    invoke-direct {v0, v3}, Lcom/railty/cerfandroid/PhoneKeypad;->Row([Lcom/railty/cerfandroid/PhoneKeypad$Key;)V

    .line 48
    new-array v3, v2, [Lcom/railty/cerfandroid/PhoneKeypad$Key;

    new-instance v8, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v12, 0x0

    sget v13, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v9, "\u00b7\u00b7\u00b7"

    const/4 v10, 0x0

    const/16 v11, 0x70

    invoke-direct/range {v8 .. v13}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v8, v3, v5

    new-instance v9, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v13, 0x0

    sget v14, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v10, "1"

    const-string v11, "@"

    const/16 v12, 0x31

    invoke-direct/range {v9 .. v14}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v9, v3, v1

    new-instance v10, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v14, 0x0

    sget v15, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v11, "2"

    const-string v12, "abc"

    const/16 v13, 0x32

    invoke-direct/range {v10 .. v15}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v10, v3, v4

    new-instance v11, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v15, 0x0

    sget v16, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v12, "3"

    const-string v13, "def"

    const/16 v14, 0x33

    invoke-direct/range {v11 .. v16}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v11, v3, v6

    new-instance v12, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/16 v16, 0x0

    sget v17, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v13, "\u00b7\u00b7\u00b7"

    const/4 v14, 0x0

    const/16 v15, 0x71

    invoke-direct/range {v12 .. v17}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v12, v3, v7

    invoke-direct {v0, v3}, Lcom/railty/cerfandroid/PhoneKeypad;->Row([Lcom/railty/cerfandroid/PhoneKeypad$Key;)V

    .line 53
    new-array v3, v2, [Lcom/railty/cerfandroid/PhoneKeypad$Key;

    new-instance v8, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v12, 0x0

    sget v13, Lcom/railty/cerfandroid/PhoneKeypad;->GREEN:I

    const-string v9, "Call"

    const/4 v10, 0x0

    const/16 v11, 0x72

    invoke-direct/range {v8 .. v13}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v8, v3, v5

    new-instance v9, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v13, 0x0

    sget v14, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v10, "4"

    const-string v11, "ghi"

    const/16 v12, 0x34

    invoke-direct/range {v9 .. v14}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v9, v3, v1

    new-instance v10, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v14, 0x0

    sget v15, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v11, "5"

    const-string v12, "jkl"

    const/16 v13, 0x35

    invoke-direct/range {v10 .. v15}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v10, v3, v4

    new-instance v11, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v15, 0x0

    sget v16, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v12, "6"

    const-string v13, "mno"

    const/16 v14, 0x36

    invoke-direct/range {v11 .. v16}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v11, v3, v6

    new-instance v12, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/16 v16, 0x0

    sget v17, Lcom/railty/cerfandroid/PhoneKeypad;->RED:I

    const-string v13, "End"

    const/4 v14, 0x0

    const/16 v15, 0x73

    invoke-direct/range {v12 .. v17}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v12, v3, v7

    invoke-direct {v0, v3}, Lcom/railty/cerfandroid/PhoneKeypad;->Row([Lcom/railty/cerfandroid/PhoneKeypad$Key;)V

    .line 58
    new-array v3, v2, [Lcom/railty/cerfandroid/PhoneKeypad$Key;

    new-instance v8, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v12, 0x0

    sget v13, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v9, "start-glyph"

    const/4 v10, 0x0

    const/16 v11, 0x5b

    invoke-direct/range {v8 .. v13}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v8, v3, v5

    new-instance v9, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v13, 0x0

    sget v14, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v10, "7"

    const-string v11, "pqrs"

    const/16 v12, 0x37

    invoke-direct/range {v9 .. v14}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v9, v3, v1

    new-instance v10, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v14, 0x0

    sget v15, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v11, "8"

    const-string v12, "tuv"

    const/16 v13, 0x38

    invoke-direct/range {v10 .. v15}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v10, v3, v4

    new-instance v11, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v15, 0x0

    sget v16, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v12, "9"

    const-string v13, "wxyz"

    const/16 v14, 0x39

    invoke-direct/range {v11 .. v16}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v11, v3, v6

    new-instance v12, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/16 v16, 0x0

    sget v17, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v13, "OK"

    const/4 v14, 0x0

    const/16 v15, 0xd

    invoke-direct/range {v12 .. v17}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v12, v3, v7

    invoke-direct {v0, v3}, Lcom/railty/cerfandroid/PhoneKeypad;->Row([Lcom/railty/cerfandroid/PhoneKeypad$Key;)V

    .line 63
    new-array v2, v2, [Lcom/railty/cerfandroid/PhoneKeypad$Key;

    new-instance v8, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v12, 0x0

    sget v13, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v9, "Mode"

    const/4 v10, 0x0

    const/16 v11, 0x74

    invoke-direct/range {v8 .. v13}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v8, v2, v5

    new-instance v9, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v13, 0x1

    sget v14, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v10, "*"

    const/4 v11, 0x0

    const/16 v12, 0x38

    invoke-direct/range {v9 .. v14}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v9, v2, v1

    new-instance v10, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v14, 0x0

    sget v15, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v11, "0"

    const-string v12, "\u2022"

    const/16 v13, 0x30

    invoke-direct/range {v10 .. v15}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v10, v2, v4

    new-instance v11, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/4 v15, 0x1

    sget v16, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v12, "#"

    const/4 v13, 0x0

    const/16 v14, 0x33

    invoke-direct/range {v11 .. v16}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v11, v2, v6

    new-instance v12, Lcom/railty/cerfandroid/PhoneKeypad$Key;

    const/16 v16, 0x0

    sget v17, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    const-string v13, "C"

    const/4 v14, 0x0

    const/16 v15, 0x8

    invoke-direct/range {v12 .. v17}, Lcom/railty/cerfandroid/PhoneKeypad$Key;-><init>(Ljava/lang/String;Ljava/lang/String;IZI)V

    aput-object v12, v2, v7

    invoke-direct {v0, v2}, Lcom/railty/cerfandroid/PhoneKeypad;->Row([Lcom/railty/cerfandroid/PhoneKeypad$Key;)V

    .line 68
    return-void
.end method

.method private Button(Lcom/railty/cerfandroid/PhoneKeypad$Key;)Landroid/view/View;
    .locals 5

    .line 127
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/railty/cerfandroid/PhoneKeypad;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 128
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    iget v1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget-object v1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/high16 v1, 0x41800000    # 16.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 132
    iget-object v1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->label:Ljava/lang/String;

    const-string v2, "start-glyph"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v1, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/railty/cerfandroid/PhoneKeypad;->dp(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;-><init>(I)V

    .line 135
    new-instance v2, Lcom/railty/cerfandroid/PhoneKeypad$1;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {v2, p0, v3, v1}, Lcom/railty/cerfandroid/PhoneKeypad$1;-><init>(Lcom/railty/cerfandroid/PhoneKeypad;[Landroid/graphics/drawable/Drawable;Lcom/railty/cerfandroid/PhoneKeypad$StartGlyph;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->sub:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->sub:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v1, 0x0

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_1

    .line 149
    :cond_2
    iget-object v1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :goto_1
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 152
    new-instance v1, Lcom/railty/cerfandroid/PhoneKeypad$2;

    invoke-direct {v1, p0, p1}, Lcom/railty/cerfandroid/PhoneKeypad$2;-><init>(Lcom/railty/cerfandroid/PhoneKeypad;Lcom/railty/cerfandroid/PhoneKeypad$Key;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    return-object v0
.end method

.method private varargs Row([Lcom/railty/cerfandroid/PhoneKeypad$Key;)V
    .locals 8

    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/railty/cerfandroid/PhoneKeypad;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    array-length v2, p1

    move v3, v1

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    if-ge v3, v2, :cond_0

    aget-object v6, p1, v3

    invoke-direct {p0, v6}, Lcom/railty/cerfandroid/PhoneKeypad;->Button(Lcom/railty/cerfandroid/PhoneKeypad$Key;)Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, p1}, Lcom/railty/cerfandroid/PhoneKeypad;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 12
    sget v0, Lcom/railty/cerfandroid/PhoneKeypad;->WHITE:I

    return v0
.end method

.method static synthetic access$100(Lcom/railty/cerfandroid/PhoneKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/railty/cerfandroid/PhoneKeypad;->sink:Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    return-object p0
.end method

.method private dp(I)I
    .locals 1

    .line 87
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/railty/cerfandroid/PhoneKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
