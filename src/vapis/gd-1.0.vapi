/* gd-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gd", gir_namespace = "Gd", gir_version = "1.0", lower_case_cprefix = "gd_")]
namespace Gd {
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_main_box_get_type ()")]
	public class MainBox : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public MainBox (Gd.MainBoxType type);
		public Gd.MainBoxType get_box_type ();
		public unowned GLib.ListModel get_model ();
		public GLib.List<Gd.MainBoxItem> get_selection ();
		public bool get_selection_mode ();
		public bool get_show_primary_text ();
		public bool get_show_secondary_text ();
		public void select_all ();
		public void set_box_type (Gd.MainBoxType type);
		public void set_model (GLib.ListModel? model);
		public void set_selection_mode (bool selection_mode);
		public void set_show_primary_text (bool show_primary_text);
		public void set_show_secondary_text (bool show_secondary_text);
		public void unselect_all ();
		public int box_type { get; set construct; }
		public GLib.ListModel model { get; set construct; }
		public bool selection_mode { get; set construct; }
		public bool show_primary_text { get; set construct; }
		public bool show_secondary_text { get; set construct; }
		public signal void item_activated (Gd.MainBoxItem object);
		public signal void selection_changed ();
		public signal void selection_mode_request ();
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_main_icon_box_get_type ()")]
	public class MainIconBox : Gtk.FlowBox, Atk.Implementor, Gd.MainBoxGeneric, Gtk.Buildable, Gtk.Orientable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public MainIconBox ();
		[NoWrapper]
		public virtual bool move_cursor (Gtk.MovementStep step, int count);
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_main_icon_box_child_get_type ()")]
	public class MainIconBoxChild : Gtk.FlowBoxChild, Atk.Implementor, Gd.MainBoxChild, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public MainIconBoxChild (Gd.MainBoxItem item, bool selection_mode);
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_main_icon_box_icon_get_type ()")]
	public class MainIconBoxIcon : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public MainIconBoxIcon (Gd.MainBoxItem item);
		public void set_item (Gd.MainBoxItem item);
		[NoAccessorMethod]
		public Gd.MainBoxItem item { owned get; set; }
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_main_icon_view_get_type ()")]
	public class MainIconView : Gtk.IconView, Atk.Implementor, Gd.MainViewGeneric, Gtk.Buildable, Gtk.CellLayout, Gtk.Scrollable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public MainIconView ();
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_notification_get_type ()")]
	public class Notification : Gtk.Bin, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Notification ();
		public void dismiss ();
		public void set_show_close_button (bool show_close_button);
		public void set_timeout (int timeout_sec);
		[NoAccessorMethod]
		public bool show_close_button { get; set construct; }
		[NoAccessorMethod]
		[Version (since = "0.1")]
		public int timeout { get; set construct; }
		public virtual signal void dismissed ();
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_styled_text_renderer_get_type ()")]
	public class StyledTextRenderer : Gtk.CellRendererText {
		[CCode (has_construct_function = false, type = "GtkCellRenderer*")]
		public StyledTextRenderer ();
		public void add_class (string @class);
		public void remove_class (string @class);
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_tagged_entry_get_type ()")]
	public class TaggedEntry : Gtk.SearchEntry, Atk.Implementor, Gtk.Buildable, Gtk.CellEditable, Gtk.Editable {
		[CCode (has_construct_function = false)]
		public TaggedEntry ();
		public bool add_tag (Gd.TaggedEntryTag tag);
		public static GLib.Resource get_resource ();
		public bool get_tag_button_visible ();
		public bool insert_tag (Gd.TaggedEntryTag tag, int position);
		public bool remove_tag (Gd.TaggedEntryTag tag);
		public void set_tag_button_visible (bool visible);
		[NoAccessorMethod]
		public bool tag_close_visible { set; }
		public signal void tag_button_clicked (Gd.TaggedEntryTag object);
		public signal void tag_clicked (Gd.TaggedEntryTag object);
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_tagged_entry_tag_get_type ()")]
	public class TaggedEntryTag : GLib.Object {
		[CCode (has_construct_function = false)]
		public TaggedEntryTag (string label);
		public bool get_area (Cairo.RectangleInt rect);
		public bool get_has_close_button ();
		public unowned string get_label ();
		public unowned string get_style ();
		public void set_has_close_button (bool has_close_button);
		public void set_label (string label);
		public void set_style (string style);
		public bool has_close_button { get; set construct; }
		public string label { get; set construct; }
		public string style { get; set construct; }
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_toggle_pixbuf_renderer_get_type ()")]
	public class TogglePixbufRenderer : Gtk.CellRendererPixbuf {
		[CCode (has_construct_function = false, type = "GtkCellRenderer*")]
		public TogglePixbufRenderer ();
		[NoAccessorMethod]
		public bool active { get; set; }
		[NoAccessorMethod]
		public uint pulse { get; set; }
		[NoAccessorMethod]
		public bool toggle_visible { get; set; }
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_two_lines_renderer_get_type ()")]
	public class TwoLinesRenderer : Gtk.CellRendererText {
		[CCode (has_construct_function = false, type = "GtkCellRenderer*")]
		public TwoLinesRenderer ();
		[NoAccessorMethod]
		public string line_two { owned get; set; }
		[NoAccessorMethod]
		public int text_lines { get; set; }
	}
	[CCode (cheader_filename = "libgd/gd.h", type_cname = "GdMainBoxChildInterface", type_id = "gd_main_box_child_get_type ()")]
	public interface MainBoxChild : Gtk.Widget {
		public abstract int get_index ();
		public abstract unowned Gd.MainBoxItem get_item ();
		public abstract bool get_selected ();
		public bool get_selection_mode ();
		public abstract void set_selected (bool selected);
		public void set_selection_mode (bool selection_mode);
		public abstract Gd.MainBoxItem item { get; construct; }
		[ConcreteAccessor]
		public abstract bool selection_mode { get; set construct; }
		[NoAccessorMethod]
		public abstract bool show_primary_text { get; set; }
		[NoAccessorMethod]
		public abstract bool show_secondary_text { get; set; }
	}
	[CCode (cheader_filename = "libgd/gd.h", type_cname = "GdMainBoxGenericInterface", type_id = "gd_main_box_generic_get_type ()")]
	public interface MainBoxGeneric : Gtk.Widget {
		public abstract unowned Gd.MainBoxChild get_child_at_index (int index);
		public abstract unowned string get_last_selected_id ();
		public abstract unowned GLib.ListModel get_model ();
		public abstract GLib.List<weak Gd.MainBoxChild> get_selected_children ();
		public bool get_selection_mode ();
		public bool get_show_primary_text ();
		public bool get_show_secondary_text ();
		public abstract void select_all ();
		public abstract void select_child (Gd.MainBoxChild child);
		public void set_model (GLib.ListModel? model);
		public void set_selection_mode (bool selection_mode);
		public void set_show_primary_text (bool show_primary_text);
		public void set_show_secondary_text (bool show_secondary_text);
		public void toggle_selection_for_child (Gd.MainBoxChild child, bool select_range);
		public abstract void unselect_all ();
		public abstract void unselect_child (Gd.MainBoxChild child);
		[NoAccessorMethod]
		public abstract bool gd_selection_mode { get; set; }
		public abstract string last_selected_id { get; }
		public abstract GLib.ListModel model { get; set; }
		[ConcreteAccessor]
		public abstract bool show_primary_text { get; set; }
		[ConcreteAccessor]
		public abstract bool show_secondary_text { get; set; }
		public signal void item_activated (Gd.MainBoxChild object);
		public signal void selection_changed ();
		public signal void selection_mode_request ();
	}
	[CCode (cheader_filename = "libgd/gd.h", type_cname = "GdMainBoxItemInterface", type_id = "gd_main_box_item_get_type ()")]
	public interface MainBoxItem : GLib.Object {
		//public abstract unowned Cairo.Surface get_icon ();
		//public abstract unowned string get_id ();
		//public int64 get_mtime ();
		//public abstract unowned string get_primary_text ();
		//public bool get_pulse ();
		//public abstract unowned string get_secondary_text ();
		//public abstract unowned string get_uri ();
		public abstract Cairo.Surface icon { get; }
		public abstract string id { get; }
		[ConcreteAccessor]
		public abstract int64 mtime { get; }
		public abstract string primary_text { get; }
		[ConcreteAccessor]
		public abstract bool pulse { get; }
		public abstract string secondary_text { get; }
		public abstract string uri { get; }
	}
	[CCode (cheader_filename = "libgd/gd.h", type_id = "gd_main_view_generic_get_type ()")]
	public interface MainViewGeneric : Gtk.Widget {
		public abstract unowned Gtk.TreeModel get_model ();
		public abstract Gtk.TreePath get_path_at_pos (int x, int y);
		public abstract void scroll_to_path (Gtk.TreePath path);
		public void select_all ();
		public abstract void set_model (Gtk.TreeModel? model);
		public void set_rubberband_range (Gtk.TreePath start, Gtk.TreePath end);
		public abstract void set_selection_mode (bool selection_mode);
		public void unselect_all ();
		public signal void view_selection_changed ();
	}
	[CCode (cheader_filename = "libgd/gd.h", cprefix = "GD_MAIN_BOX_", has_type_id = false)]
	public enum MainBoxType {
		ICON,
		LIST
	}
	[CCode (cheader_filename = "libgd/gd.h", cprefix = "GD_MAIN_COLUMN_", has_type_id = false)]
	public enum MainColumns {
		ID,
		URI,
		PRIMARY_TEXT,
		SECONDARY_TEXT,
		ICON,
		MTIME,
		SELECTED,
		PULSE,
		LAST
	}
	[CCode (cheader_filename = "libgd/gd.h")]
	public static Cairo.Surface copy_image_surface (Cairo.Surface surface);
	[CCode (cheader_filename = "libgd/gd.h")]
	public static Cairo.Surface create_surface_with_counter (Gtk.Widget widget, Cairo.Surface @base, int number);
	[CCode (cheader_filename = "libgd/gd.h")]
	public static GLib.Icon create_symbolic_icon (string name, int base_size);
	[CCode (cheader_filename = "libgd/gd.h")]
	public static GLib.Icon create_symbolic_icon_for_scale (string name, int base_size, int scale);
	[CCode (cheader_filename = "libgd/gd.h")]
	public static Gdk.Pixbuf embed_image_in_frame (Gdk.Pixbuf source_image, string frame_image_url, Gtk.Border slice_width, Gtk.Border border_width);
	[CCode (cheader_filename = "libgd/gd.h")]
	public static Cairo.Surface embed_surface_in_frame (Cairo.Surface source_image, string frame_image_url, Gtk.Border slice_width, Gtk.Border border_width);
	[CCode (cheader_filename = "libgd/gd.h")]
	public static void ensure_types ();
	[CCode (cheader_filename = "libgd/gd.h")]
	public static void entry_focus_hack (Gtk.Widget entry, Gdk.Device device);
}
