.class public final synthetic Ljkf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/Button;

.field private final d:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljkf;->a:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    iput-object p2, p0, Ljkf;->b:Landroid/widget/TextView;

    iput-object p3, p0, Ljkf;->c:Landroid/widget/Button;

    iput-object p4, p0, Ljkf;->d:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Ljkf;->a:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    iget-object v0, p0, Ljkf;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ljkf;->c:Landroid/widget/Button;

    iget-object v2, p0, Ljkf;->d:Landroid/widget/Button;

    const-string v3, "-1"

    invoke-virtual {p1, v3}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a(Ljava/lang/String;)V

    const-string p1, "Current Key Bind: None\nPress key to bind"

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
