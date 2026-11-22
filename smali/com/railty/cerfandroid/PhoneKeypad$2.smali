.class Lcom/railty/cerfandroid/PhoneKeypad$2;
.super Ljava/lang/Object;
.source "PhoneKeypad.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/PhoneKeypad;->Button(Lcom/railty/cerfandroid/PhoneKeypad$Key;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/PhoneKeypad;

.field final synthetic val$key:Lcom/railty/cerfandroid/PhoneKeypad$Key;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/PhoneKeypad;Lcom/railty/cerfandroid/PhoneKeypad$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->this$0:Lcom/railty/cerfandroid/PhoneKeypad;

    iput-object p2, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->val$key:Lcom/railty/cerfandroid/PhoneKeypad$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/16 v0, 0x10

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 169
    :pswitch_0
    return v1

    .line 164
    :pswitch_1
    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    iget-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->this$0:Lcom/railty/cerfandroid/PhoneKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/PhoneKeypad;->access$100(Lcom/railty/cerfandroid/PhoneKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    move-result-object p1

    iget-object p2, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->val$key:Lcom/railty/cerfandroid/PhoneKeypad$Key;

    iget p2, p2, Lcom/railty/cerfandroid/PhoneKeypad$Key;->vk:I

    invoke-interface {p1, p2, v1}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 166
    iget-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->val$key:Lcom/railty/cerfandroid/PhoneKeypad$Key;

    iget-boolean p1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->shifted:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->this$0:Lcom/railty/cerfandroid/PhoneKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/PhoneKeypad;->access$100(Lcom/railty/cerfandroid/PhoneKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 167
    :cond_0
    return v1

    .line 157
    :pswitch_2
    const/16 p2, 0x2d

    invoke-static {p2, p2, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 158
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 159
    iget-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->val$key:Lcom/railty/cerfandroid/PhoneKeypad$Key;

    iget-boolean p1, p1, Lcom/railty/cerfandroid/PhoneKeypad$Key;->shifted:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->this$0:Lcom/railty/cerfandroid/PhoneKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/PhoneKeypad;->access$100(Lcom/railty/cerfandroid/PhoneKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->this$0:Lcom/railty/cerfandroid/PhoneKeypad;

    invoke-static {p1}, Lcom/railty/cerfandroid/PhoneKeypad;->access$100(Lcom/railty/cerfandroid/PhoneKeypad;)Lcom/railty/cerfandroid/PhoneKeypad$KeySink;

    move-result-object p1

    iget-object v0, p0, Lcom/railty/cerfandroid/PhoneKeypad$2;->val$key:Lcom/railty/cerfandroid/PhoneKeypad$Key;

    iget v0, v0, Lcom/railty/cerfandroid/PhoneKeypad$Key;->vk:I

    invoke-interface {p1, v0, p2}, Lcom/railty/cerfandroid/PhoneKeypad$KeySink;->Key(IZ)V

    .line 161
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
