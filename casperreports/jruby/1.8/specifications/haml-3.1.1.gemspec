# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haml}
  s.version = "3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Weizenbaum", "Hampton Catlin"]
  s.date = %q{2011-04-25}
  s.description = %q{      Haml (HTML Abstraction Markup Language) is a layer on top of XHTML or XML
      that's designed to express the structure of XHTML or XML documents
      in a non-repetitive, elegant, easy way,
      using indentation rather than closing tags
      and allowing Ruby to be embedded with ease.
      It was originally envisioned as a plugin for Ruby on Rails,
      but it can function as a stand-alone templating engine.
}
  s.email = %q{haml@googlegroups.com}
  s.executables = ["haml", "html2haml"]
  s.files = ["rails/init.rb", "lib/sass.rb", "lib/haml.rb", "lib/haml/helpers/action_view_mods.rb", "lib/haml/helpers/action_view_extensions.rb", "lib/haml/helpers/xss_mods.rb", "lib/haml/parser.rb", "lib/haml/version.rb", "lib/haml/compiler.rb", "lib/haml/shared.rb", "lib/haml/buffer.rb", "lib/haml/error.rb", "lib/haml/engine.rb", "lib/haml/root.rb", "lib/haml/filters.rb", "lib/haml/template/options.rb", "lib/haml/template/plugin.rb", "lib/haml/template/patch.rb", "lib/haml/html/erb.rb", "lib/haml/util.rb", "lib/haml/helpers.rb", "lib/haml/template.rb", "lib/haml/railtie.rb", "lib/haml/html.rb", "lib/haml/exec.rb", "lib/sass/rails2_shim.rb", "lib/sass/rails3_shim.rb", "lib/sass/plugin.rb", "bin/html2haml", "bin/haml", "test/linked_rails.rb", "test/benchmark.rb", "test/test_helper.rb", "test/haml/engine_test.rb", "test/haml/html2haml_test.rb", "test/haml/erb/_av_partial_1.erb", "test/haml/erb/standard.erb", "test/haml/erb/_av_partial_2.erb", "test/haml/erb/action_view.erb", "test/haml/templates/helpers.haml", "test/haml/templates/nuke_outer_whitespace.haml", "test/haml/templates/partialize.haml", "test/haml/templates/whitespace_handling.haml", "test/haml/templates/just_stuff.haml", "test/haml/templates/list.haml", "test/haml/templates/partials.haml", "test/haml/templates/filters.haml", "test/haml/templates/helpful.haml", "test/haml/templates/standard_ugly.haml", "test/haml/templates/_av_partial_1.haml", "test/haml/templates/action_view_ugly.haml", "test/haml/templates/action_view.haml", "test/haml/templates/_partial.haml", "test/haml/templates/_layout.erb", "test/haml/templates/tag_parsing.haml", "test/haml/templates/original_engine.haml", "test/haml/templates/standard.haml", "test/haml/templates/_text_area.haml", "test/haml/templates/_av_partial_2_ugly.haml", "test/haml/templates/very_basic.haml", "test/haml/templates/silent_script.haml", "test/haml/templates/content_for_layout.haml", "test/haml/templates/_av_partial_2.haml", "test/haml/templates/_av_partial_1_ugly.haml", "test/haml/templates/partial_layout.haml", "test/haml/templates/nuke_inner_whitespace.haml", "test/haml/templates/breakage.haml", "test/haml/templates/_layout_for_partial.haml", "test/haml/templates/eval_suppressed.haml", "test/haml/templates/render_layout.haml", "test/haml/markaby/standard.mab", "test/haml/template_test.rb", "test/haml/util_test.rb", "test/haml/html2haml/erb_tests.rb", "test/haml/results/partial_layout.xhtml", "test/haml/results/original_engine.xhtml", "test/haml/results/silent_script.xhtml", "test/haml/results/render_layout.xhtml", "test/haml/results/just_stuff.xhtml", "test/haml/results/partials.xhtml", "test/haml/results/helpful.xhtml", "test/haml/results/eval_suppressed.xhtml", "test/haml/results/whitespace_handling.xhtml", "test/haml/results/nuke_outer_whitespace.xhtml", "test/haml/results/nuke_inner_whitespace.xhtml", "test/haml/results/standard.xhtml", "test/haml/results/tag_parsing.xhtml", "test/haml/results/helpers.xhtml", "test/haml/results/content_for_layout.xhtml", "test/haml/results/very_basic.xhtml", "test/haml/results/filters.xhtml", "test/haml/results/list.xhtml", "test/haml/helper_test.rb", "test/haml/spec_test.rb", "test/haml/mocks/article.rb", "test/haml/spec/ruby_haml_test.rb", "test/haml/spec/README.md", "test/haml/spec/tests.json", "test/haml/spec/lua_haml_spec.lua", "extra/update_watch.rb", "vendor/sass/ext/extconf.rb", "vendor/sass/yard/default/fulldoc/html/css/common.sass", "vendor/sass/yard/default/layout/html/footer.erb", "vendor/sass/yard/callbacks.rb", "vendor/sass/yard/inherited_hash.rb", "vendor/sass/README.md", "vendor/sass/VERSION_NAME", "vendor/sass/lib/sass.rb", "vendor/sass/lib/sass/cache_stores.rb", "vendor/sass/lib/sass/plugin/compiler.rb", "vendor/sass/lib/sass/plugin/merb.rb", "vendor/sass/lib/sass/plugin/staleness_checker.rb", "vendor/sass/lib/sass/plugin/rack.rb", "vendor/sass/lib/sass/plugin/rails.rb", "vendor/sass/lib/sass/plugin/configuration.rb", "vendor/sass/lib/sass/plugin/generic.rb", "vendor/sass/lib/sass/version.rb", "vendor/sass/lib/sass/cache_stores/chain.rb", "vendor/sass/lib/sass/cache_stores/memory.rb", "vendor/sass/lib/sass/cache_stores/null.rb", "vendor/sass/lib/sass/cache_stores/filesystem.rb", "vendor/sass/lib/sass/cache_stores/base.rb", "vendor/sass/lib/sass/shared.rb", "vendor/sass/lib/sass/repl.rb", "vendor/sass/lib/sass/error.rb", "vendor/sass/lib/sass/tree/import_node.rb", "vendor/sass/lib/sass/tree/return_node.rb", "vendor/sass/lib/sass/tree/root_node.rb", "vendor/sass/lib/sass/tree/if_node.rb", "vendor/sass/lib/sass/tree/charset_node.rb", "vendor/sass/lib/sass/tree/function_node.rb", "vendor/sass/lib/sass/tree/media_node.rb", "vendor/sass/lib/sass/tree/while_node.rb", "vendor/sass/lib/sass/tree/for_node.rb", "vendor/sass/lib/sass/tree/directive_node.rb", "vendor/sass/lib/sass/tree/rule_node.rb", "vendor/sass/lib/sass/tree/each_node.rb", "vendor/sass/lib/sass/tree/node.rb", "vendor/sass/lib/sass/tree/mixin_node.rb", "vendor/sass/lib/sass/tree/extend_node.rb", "vendor/sass/lib/sass/tree/mixin_def_node.rb", "vendor/sass/lib/sass/tree/visitors/perform.rb", "vendor/sass/lib/sass/tree/visitors/to_css.rb", "vendor/sass/lib/sass/tree/visitors/check_nesting.rb", "vendor/sass/lib/sass/tree/visitors/cssize.rb", "vendor/sass/lib/sass/tree/visitors/convert.rb", "vendor/sass/lib/sass/tree/visitors/base.rb", "vendor/sass/lib/sass/tree/comment_node.rb", "vendor/sass/lib/sass/tree/warn_node.rb", "vendor/sass/lib/sass/tree/debug_node.rb", "vendor/sass/lib/sass/tree/prop_node.rb", "vendor/sass/lib/sass/tree/variable_node.rb", "vendor/sass/lib/sass/engine.rb", "vendor/sass/lib/sass/plugin.rb", "vendor/sass/lib/sass/root.rb", "vendor/sass/lib/sass/importers.rb", "vendor/sass/lib/sass/util/subset_map.rb", "vendor/sass/lib/sass/scss.rb", "vendor/sass/lib/sass/scss/static_parser.rb", "vendor/sass/lib/sass/scss/parser.rb", "vendor/sass/lib/sass/scss/sass_parser.rb", "vendor/sass/lib/sass/scss/script_lexer.rb", "vendor/sass/lib/sass/scss/rx.rb", "vendor/sass/lib/sass/scss/script_parser.rb", "vendor/sass/lib/sass/scss/css_parser.rb", "vendor/sass/lib/sass/css.rb", "vendor/sass/lib/sass/script.rb", "vendor/sass/lib/sass/util.rb", "vendor/sass/lib/sass/importers/filesystem.rb", "vendor/sass/lib/sass/importers/base.rb", "vendor/sass/lib/sass/script/color.rb", "vendor/sass/lib/sass/script/variable.rb", "vendor/sass/lib/sass/script/operation.rb", "vendor/sass/lib/sass/script/funcall.rb", "vendor/sass/lib/sass/script/literal.rb", "vendor/sass/lib/sass/script/parser.rb", "vendor/sass/lib/sass/script/functions.rb", "vendor/sass/lib/sass/script/number.rb", "vendor/sass/lib/sass/script/string_interpolation.rb", "vendor/sass/lib/sass/script/interpolation.rb", "vendor/sass/lib/sass/script/node.rb", "vendor/sass/lib/sass/script/bool.rb", "vendor/sass/lib/sass/script/unary_operation.rb", "vendor/sass/lib/sass/script/lexer.rb", "vendor/sass/lib/sass/script/list.rb", "vendor/sass/lib/sass/script/css_lexer.rb", "vendor/sass/lib/sass/script/string.rb", "vendor/sass/lib/sass/script/css_parser.rb", "vendor/sass/lib/sass/selector.rb", "vendor/sass/lib/sass/less.rb", "vendor/sass/lib/sass/callbacks.rb", "vendor/sass/lib/sass/selector/simple.rb", "vendor/sass/lib/sass/selector/sequence.rb", "vendor/sass/lib/sass/selector/abstract_sequence.rb", "vendor/sass/lib/sass/selector/comma_sequence.rb", "vendor/sass/lib/sass/selector/simple_sequence.rb", "vendor/sass/lib/sass/railtie.rb", "vendor/sass/lib/sass/environment.rb", "vendor/sass/lib/sass/exec.rb", "vendor/sass/TODO", "vendor/sass/init.rb", "vendor/sass/Rakefile", "vendor/sass/MIT-LICENSE", "vendor/sass/test/test_helper.rb", "vendor/sass/test/sass/engine_test.rb", "vendor/sass/test/sass/functions_test.rb", "vendor/sass/test/sass/data/hsl-rgb.txt", "vendor/sass/test/sass/extend_test.rb", "vendor/sass/test/sass/css2sass_test.rb", "vendor/sass/test/sass/templates/basic.sass", "vendor/sass/test/sass/templates/mixins.sass", "vendor/sass/test/sass/templates/options.sass", "vendor/sass/test/sass/templates/scss_import.scss", "vendor/sass/test/sass/templates/subdir/subdir.sass", "vendor/sass/test/sass/templates/subdir/nested_subdir/_nested_partial.sass", "vendor/sass/test/sass/templates/subdir/nested_subdir/nested_subdir.sass", "vendor/sass/test/sass/templates/alt.sass", "vendor/sass/test/sass/templates/nested_bork1.sass", "vendor/sass/test/sass/templates/complex.sass", "vendor/sass/test/sass/templates/units.sass", "vendor/sass/test/sass/templates/nested_import.sass", "vendor/sass/test/sass/templates/importee.sass", "vendor/sass/test/sass/templates/importee.less", "vendor/sass/test/sass/templates/scss_importee.scss", "vendor/sass/test/sass/templates/line_numbers.sass", "vendor/sass/test/sass/templates/expanded.sass", "vendor/sass/test/sass/templates/bork3.sass", "vendor/sass/test/sass/templates/warn_imported.sass", "vendor/sass/test/sass/templates/import_charset_ibm866.sass", "vendor/sass/test/sass/templates/bork1.sass", "vendor/sass/test/sass/templates/warn.sass", "vendor/sass/test/sass/templates/bork2.sass", "vendor/sass/test/sass/templates/nested.sass", "vendor/sass/test/sass/templates/compact.sass", "vendor/sass/test/sass/templates/multiline.sass", "vendor/sass/test/sass/templates/_imported_charset_ibm866.sass", "vendor/sass/test/sass/templates/import_charset.sass", "vendor/sass/test/sass/templates/parent_ref.sass", "vendor/sass/test/sass/templates/import.sass", "vendor/sass/test/sass/templates/nested_bork3.sass", "vendor/sass/test/sass/templates/script.sass", "vendor/sass/test/sass/templates/bork4.sass", "vendor/sass/test/sass/templates/if.sass", "vendor/sass/test/sass/templates/_partial.sass", "vendor/sass/test/sass/templates/nested_mixin_bork.sass", "vendor/sass/test/sass/templates/import_charset_1_8.sass", "vendor/sass/test/sass/templates/nested_bork2.sass", "vendor/sass/test/sass/templates/mixin_bork.sass", "vendor/sass/test/sass/templates/compressed.sass", "vendor/sass/test/sass/templates/nested_bork4.sass", "vendor/sass/test/sass/templates/_imported_charset_utf8.sass", "vendor/sass/test/sass/conversion_test.rb", "vendor/sass/test/sass/script_test.rb", "vendor/sass/test/sass/util/subset_map_test.rb", "vendor/sass/test/sass/callbacks_test.rb", "vendor/sass/test/sass/importer_test.rb", "vendor/sass/test/sass/scss/css_test.rb", "vendor/sass/test/sass/scss/scss_test.rb", "vendor/sass/test/sass/scss/rx_test.rb", "vendor/sass/test/sass/scss/test_helper.rb", "vendor/sass/test/sass/util_test.rb", "vendor/sass/test/sass/results/mixins.css", "vendor/sass/test/sass/results/warn_imported.css", "vendor/sass/test/sass/results/expanded.css", "vendor/sass/test/sass/results/compact.css", "vendor/sass/test/sass/results/compressed.css", "vendor/sass/test/sass/results/scss_importee.css", "vendor/sass/test/sass/results/basic.css", "vendor/sass/test/sass/results/subdir/nested_subdir/nested_subdir.css", "vendor/sass/test/sass/results/subdir/subdir.css", "vendor/sass/test/sass/results/options.css", "vendor/sass/test/sass/results/scss_import.css", "vendor/sass/test/sass/results/units.css", "vendor/sass/test/sass/results/parent_ref.css", "vendor/sass/test/sass/results/script.css", "vendor/sass/test/sass/results/complex.css", "vendor/sass/test/sass/results/import_charset.css", "vendor/sass/test/sass/results/alt.css", "vendor/sass/test/sass/results/if.css", "vendor/sass/test/sass/results/multiline.css", "vendor/sass/test/sass/results/import_charset_1_8.css", "vendor/sass/test/sass/results/warn.css", "vendor/sass/test/sass/results/import_charset_ibm866.css", "vendor/sass/test/sass/results/import.css", "vendor/sass/test/sass/results/nested.css", "vendor/sass/test/sass/results/line_numbers.css", "vendor/sass/test/sass/test_helper.rb", "vendor/sass/test/sass/more_templates/_more_partial.sass", "vendor/sass/test/sass/more_templates/more_import.sass", "vendor/sass/test/sass/more_templates/more1.sass", "vendor/sass/test/sass/script_conversion_test.rb", "vendor/sass/test/sass/less_conversion_test.rb", "vendor/sass/test/sass/more_results/more1.css", "vendor/sass/test/sass/more_results/more1_with_line_comments.css", "vendor/sass/test/sass/more_results/more_import.css", "vendor/sass/test/sass/mock_importer.rb", "vendor/sass/test/sass/cache_test.rb", "vendor/sass/test/sass/plugin_test.rb", "vendor/sass/doc-src/INDENTED_SYNTAX.md", "vendor/sass/doc-src/FAQ.md", "vendor/sass/doc-src/SCSS_FOR_SASS_USERS.md", "vendor/sass/doc-src/SASS_REFERENCE.md", "vendor/sass/doc-src/SASS_CHANGELOG.md", "vendor/sass/bin/sass-convert", "vendor/sass/bin/scss", "vendor/sass/bin/sass", "vendor/sass/VERSION", "vendor/sass/CONTRIBUTING", "vendor/sass/extra/update_watch.rb", "vendor/sass/rails/init.rb", "vendor/sass/sass.gemspec", "vendor/sass/vendor/fssm/README.markdown", "vendor/sass/vendor/fssm/example.rb", "vendor/sass/vendor/fssm/lib/fssm/pathname.rb", "vendor/sass/vendor/fssm/lib/fssm/state/file.rb", "vendor/sass/vendor/fssm/lib/fssm/state/directory.rb", "vendor/sass/vendor/fssm/lib/fssm/monitor.rb", "vendor/sass/vendor/fssm/lib/fssm/tree.rb", "vendor/sass/vendor/fssm/lib/fssm/support.rb", "vendor/sass/vendor/fssm/lib/fssm/backends/rubycocoa/fsevents.rb", "vendor/sass/vendor/fssm/lib/fssm/backends/polling.rb", "vendor/sass/vendor/fssm/lib/fssm/backends/inotify.rb", "vendor/sass/vendor/fssm/lib/fssm/backends/fsevents.rb", "vendor/sass/vendor/fssm/lib/fssm/path.rb", "vendor/sass/vendor/fssm/lib/fssm.rb", "vendor/sass/vendor/fssm/profile/prof-plain-pathname.html", "vendor/sass/vendor/fssm/profile/prof-pathname.rb", "vendor/sass/vendor/fssm/profile/prof.html", "vendor/sass/vendor/fssm/profile/prof-cache.rb", "vendor/sass/vendor/fssm/profile/prof-fssm-pathname.html", "vendor/sass/vendor/fssm/fssm.gemspec", "vendor/sass/vendor/fssm/Rakefile", "vendor/sass/vendor/fssm/VERSION.yml", "vendor/sass/vendor/fssm/LICENSE", "vendor/sass/vendor/fssm/spec/path_spec.rb", "vendor/sass/vendor/fssm/spec/root/moo/cow.txt", "vendor/sass/vendor/fssm/spec/root/file.yml", "vendor/sass/vendor/fssm/spec/root/file.css", "vendor/sass/vendor/fssm/spec/root/file.rb", "vendor/sass/vendor/fssm/spec/root/duck/quack.txt", "vendor/sass/vendor/fssm/spec/spec_helper.rb", "Rakefile", "init.rb", ".yardopts", "README.md", "VERSION_NAME", "REVISION", "MIT-LICENSE", "VERSION", "CONTRIBUTING"]
  s.homepage = %q{http://haml-lang.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{haml}
  s.rubygems_version = %q{1.5.1}
  s.summary = %q{An elegant, structured XHTML/XML templating engine.}
  s.test_files = ["test/haml/engine_test.rb", "test/haml/html2haml_test.rb", "test/haml/template_test.rb", "test/haml/util_test.rb", "test/haml/helper_test.rb", "test/haml/spec_test.rb", "test/haml/spec/ruby_haml_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<yard>, [">= 0.5.3"])
      s.add_development_dependency(%q<maruku>, [">= 0.5.9"])
    else
      s.add_dependency(%q<yard>, [">= 0.5.3"])
      s.add_dependency(%q<maruku>, [">= 0.5.9"])
    end
  else
    s.add_dependency(%q<yard>, [">= 0.5.3"])
    s.add_dependency(%q<maruku>, [">= 0.5.9"])
  end
end
